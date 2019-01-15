# import the necessary packages
from __future__ import print_function
from imutils.object_detection import non_max_suppression
import numpy as np
import imutils
import cv2
from matplotlib import pyplot as plt
import CropTest
import cx_Oracle

def WPlanImage(hallImg, dressImg, tuxedoImg, wfaceImg, mfaceImg):
    
    print (hallImg, dressImg, tuxedoImg, wfaceImg, mfaceImg)
    
    
    im1, landmarks1 = CropTest.read_im_and_landmarks(dressImg)
    
    if wfaceImg == "":
        im2, landmarks2 = CropTest.read_im_and_landmarks(wfaceImg)
        
        M = CropTest.transformation_from_points(landmarks1[CropTest.ALIGN_POINTS], landmarks2[CropTest.ALIGN_POINTS])
        
        mask = CropTest.get_face_mask(im2, landmarks2)
        warped_mask = CropTest.warp_im(mask, M, im1.shape)
        combined_mask = CropTest.numpy.max([CropTest.get_face_mask(im1, landmarks1), warped_mask], axis=0)
        
        warped_im2 = CropTest.warp_im(im2, M, im1.shape)
        warped_corrected_im2 = CropTest.correct_colours(im1, warped_im2, landmarks1)
        
        output_im = im1 * (1.0 - combined_mask) + warped_corrected_im2 * combined_mask
        
        cv2.imwrite('output.png', output_im)
    else :
        cv2.imwrite('output.png', im1)
        
    im1, landmarks1 = CropTest.read_im_and_landmarks(tuxedoImg)
    
    if mfaceImg == "":
        im2, landmarks2 = CropTest.read_im_and_landmarks(mfaceImg)
        
        M = CropTest.transformation_from_points(landmarks1[CropTest.ALIGN_POINTS], landmarks2[CropTest.ALIGN_POINTS])
        
        mask = CropTest.get_face_mask(im2, landmarks2)
        warped_mask = CropTest.warp_im(mask, M, im1.shape)
        combined_mask = CropTest.numpy.max([CropTest.get_face_mask(im1, landmarks1), warped_mask], axis=0)
        
        warped_im2 = CropTest.warp_im(im2, M, im1.shape)
        warped_corrected_im2 = CropTest.correct_colours(im1, warped_im2, landmarks1)
        
        output_im = im1 * (1.0 - combined_mask) + warped_corrected_im2 * combined_mask
        
        cv2.imwrite('output2.png', output_im)
    else : 
        cv2.imwrite('output2.png', im1)
        
    
    # initialize the HOG descriptor/person detector
    hog = cv2.HOGDescriptor()
    hog.setSVMDetector(cv2.HOGDescriptor_getDefaultPeopleDetector())
    
    hall = cv2.imread(hallImg, cv2.IMREAD_COLOR )
    b, g, r = cv2.split(hall)
    hall = cv2.merge([r,g,b])
    hall = imutils.resize(hall, width=1500)
    
    # load the dress and resize it to (1) reduce detection time
    # and (2) improve detection accuracy
    dress = cv2.imread('output.png')
    dress = cv2.resize(dress, None, fx=0.5, fy=0.5, interpolation=cv2.INTER_AREA)
    tuxedo = cv2.imread('output2.png')
    tuxedo = cv2.resize(tuxedo, None, fx=0.5, fy=0.5, interpolation=cv2.INTER_AREA)
    
    b, g, r = cv2.split(dress)
    dress = cv2.merge([r,g,b])
    b2, g2, r2 = cv2.split(tuxedo)
    tuxedo = cv2.merge([r2,g2,b2])
    
    mask = np.zeros(dress.shape[:2],np.uint8)
    mask2 = np.zeros(tuxedo.shape[:2],np.uint8)
    
    bgdModel = np.zeros((1,65),np.float64)
    fgdModel = np.zeros((1,65),np.float64)
    
    # detect people in the dress
    (rects, weights) = hog.detectMultiScale(dress, winStride=(4, 4), padding=(8, 8), scale=1.05)
    (rects2, weights2) = hog.detectMultiScale(tuxedo, winStride=(4, 4), padding=(8, 8), scale=1.05)
    
    # apply non-maxima suppression to the bounding boxes using a
    # fairly large overlap threshold to try to maintain overlapping
    # boxes that are still people
    rects = np.array([[x, y, x + w, y + h] for (x, y, w, h) in rects])
    pick = non_max_suppression(rects, probs=None, overlapThresh=0.65)
    rects2 = np.array([[x, y, x + w, y + h] for (x, y, w, h) in rects2])
    pick2 = non_max_suppression(rects2, probs=None, overlapThresh=0.65)
    
    # draw the final bounding boxes
    for (xA, yA, xB, yB) in pick:
        rect = (xA, yA , xB-xA, yB-yA)
        cv2.grabCut(dress,mask,rect,bgdModel,fgdModel,5,cv2.GC_INIT_WITH_RECT)
    for (xA2, yA2, xB2, yB2) in pick2:
        rect2 = (xA2, yA2 , xB2-xA2, yB2-yA2)
        cv2.grabCut(tuxedo,mask2,rect2,bgdModel,fgdModel,5,cv2.GC_INIT_WITH_RECT)
        
    print("{} original boxes, {} after suppression".format(len(rects), len(pick)),pick)
    print("{} original boxes, {} after suppression".format(len(rects2), len(pick2)),pick2)
    
    mask3 = np.where((mask==2)|(mask==0),0,1).astype('uint8')
    dress = dress*mask3[:,:,np.newaxis]
    mask4 = np.where((mask2==2)|(mask2==0),0,1).astype('uint8')
    tuxedo = tuxedo*mask4[:,:,np.newaxis]
    
    dress = imutils.resize(dress, height=min(hall.shape[0],dress.shape[0]))
    tuxedo = imutils.resize(tuxedo, height=min(hall.shape[0]/20*17,tuxedo.shape[0]))
    
    print ("dress Image : {} ".format(dress.shape))
    print ("tuxedo Image : {} ".format(tuxedo.shape))
    print ("hall Image  : {} ".format(hall.shape))
    
    rows, cols, channels = dress.shape
    
    cnum = hall.shape[1] / 2 - xA - 60
    rnum = (hall.shape[0] - dress.shape[0])
    
    roi = hall[rnum:rows+rnum, cnum:cols+cnum]
    
    dressGray = cv2.cvtColor(dress, cv2.COLOR_BGR2GRAY)
    ret, mask = cv2.threshold(dressGray, 10, 255, cv2.THRESH_BINARY)
    mask_inv = cv2.bitwise_not(mask)
    
    img1_fg = cv2.bitwise_and(dress, dress, mask=mask)
    img2_bg = cv2.bitwise_and(roi, roi, mask=mask_inv)
    
    dst = cv2.add(img1_fg, img2_bg)
    
    hall[rnum:rows+rnum, cnum:cols+cnum] = dst
    
    rows2, cols2, channels2 = tuxedo.shape
    
    cnum2 = hall.shape[1] / 2 - xB2 + xA2 + 60
    rnum2 = (hall.shape[0] - tuxedo.shape[0])
    
    roi = hall[rnum2:rows2+rnum2, cnum2:cols2+cnum2]
    
    tuxedoGray = cv2.cvtColor(tuxedo, cv2.COLOR_BGR2GRAY)
    ret, mask = cv2.threshold(tuxedoGray, 10, 255, cv2.THRESH_BINARY)
    mask_inv = cv2.bitwise_not(mask)
    
    print ("roi Image  : {} ".format(roi.shape))
    print ("tuxedoGray Image  : {} ".format(tuxedoGray.shape))
    print ("mask Image  : {} ".format(mask.shape))
    print ("mask_inv Image  : {} ".format(mask_inv.shape))
    
    img1_fg = cv2.bitwise_and(tuxedo, tuxedo, mask=mask)
    img2_bg = cv2.bitwise_and(roi, roi, mask=mask_inv)
    
    dst = cv2.add(img1_fg, img2_bg)
    
    hall[rnum2:rows2+rnum2, cnum2:cols2+cnum2] = dst
    
    resultImg = "result_"
    resultImg += CropTest.randomstring()
    resultImg += ".jpg"
    
    b, g, r = cv2.split(hall)
    hall = cv2.merge([r,g,b])
    
    cv2.imwrite("D:/Acorn/Lecture/wtpwebapps/WPlan/resources/upload/" + resultImg, hall)
    
    return resultImg

def WPlanImage3(hallImg, dressImg, tuxedoImg) : 
    img = WPlanImage(hallImg, dressImg, tuxedoImg, None, None)
    return img

img = WPlanImage3("hall.jpg", "dress04.jpg", "tuxedo2.jpg")
print(img)


