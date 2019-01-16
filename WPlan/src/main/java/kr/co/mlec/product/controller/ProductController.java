package kr.co.mlec.product.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.file.vo.FileUploadVO;
import kr.co.mlec.product.service.ProductService;
import kr.co.mlec.product.vo.ProductPicVO;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.service.ProductOptionService;
import kr.co.mlec.productOption.vo.ProductOptionVO;
import kr.co.mlec.qna.vo.QnaVO;
import kr.co.mlec.review.service.ReviewService;
import kr.co.mlec.review.vo.ReviewVO;
import kr.co.mlec.umember.vo.UmemberVO;

@Controller
public class ProductController {
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@Autowired
	private ProductService productService;

	@Autowired
	private ProductOptionService optionService;

	@Autowired
//	private ReviewService reviewService;

	@GetMapping("/product/{category}")
	public ModelAndView category(@PathVariable("category") String category) {
		ModelAndView mav = new ModelAndView();

		if (category.equals("dress")) {
			mav.setViewName("/product/dressType");
			return mav;
		} else if (category.equals("addProductForm")) {
			mav.setViewName("product/addProductForm");
			return mav;
		}

		List<ProductPicVO> productList = productService.selectAllProduct(category);
		System.out.println(productList);

		category = category.toUpperCase();
		System.out.println(category);

		// 나중에 상품 대표 이미지도 리퀘스트 영역에 올려서 넘겨주기
		mav.addObject("category", category);
		mav.addObject("productList", productList);
		mav.setViewName("/product/category");

		return mav;
	}

	@GetMapping("/product/dress/{dressType}")
	public ModelAndView dress(@PathVariable("dressType") String type) {
		ModelAndView mav = new ModelAndView();

		List<ProductPicVO> productList = productService.selectDressType(type);
		System.out.println(productList);

		String category = "DRESS";
		System.out.println(category);

		// 나중에 상품 대표 이미지도 리퀘스트 영역에 올려서 넘겨주기
		mav.addObject("category", category);
		mav.addObject("productList", productList);
		mav.setViewName("/product/category");

		return mav;
	}
	/*
	 * @GetMapping("/product/dress/{dressType}") public String
	 * dressType(@PathVariable("dressType") String dressType) {
	 * 
	 * return "/product/dress"; }
	 */

	// 상세페이지
	@GetMapping("/product/detail/{no}")
	public ModelAndView detail(ModelAndView mav, @PathVariable("no") int no) {

		// productVO 가져오기
		ProductVO productVO = productService.selectProductByNo(no);
		// productOptionList 가져오기
		List<ProductOptionVO> optionList = optionService.selectOption(no);
		
		
		List<FileUploadVO> fileList = productService.fileSelectNo(no);
		
		System.out.println(fileList);
		// 후기리스트 가져오기
//		List<ReviewVO> reviewList = reviewService.selectAllReview(no);

		// 위 Array에서 List로 변경, DB연결하여 확인 할 것
		List<ArrayList<String>> options = new ArrayList<ArrayList<String>>(); // value 배열들의 배열

		String name = ""; // optionName 초기화
		ArrayList<String> innerList = new ArrayList<>(); // 하나의 옵션 name에 대한 value 배열
		if (!optionList.isEmpty()) {
			name = optionList.get(0).getpOptionName(); // 0번지 name값으로 name 초기화
			for (int i = 0; i < optionList.size(); i++) {

				// name이 다를때
				if (!name.equals(optionList.get(i).getpOptionName())) {
					options.add(innerList);
					innerList = new ArrayList<>();
					innerList.add(optionList.get(i).getpOptionValue());
					name = optionList.get(i).getpOptionName();

				} else { // name이 같을 때

					innerList.add(optionList.get(i).getpOptionValue());
					name = optionList.get(i).getpOptionName();
				}

				if (i == optionList.size() - 1) {
					options.add(innerList);
				}
			}
		}

		name = ""; // name 초기화
		// 옵션의 name만 모아놓은 리스트
		List<String> optionNameList = new ArrayList<>();
		for (int i = 0; i < optionList.size() - 1; i++) {
			if (!name.equals(optionList.get(i).getpOptionName())) {
				name = optionList.get(i).getpOptionName();
				optionNameList.add(name);
			}
		}
		

		mav.addObject("productVO", productVO);
		mav.addObject("options", options); // 옵션 배열의 배열
		mav.addObject("optionNameList", optionNameList); // 옵션 네임의 List
		mav.addObject("fileList", fileList); // 옵션 네임의 List
		mav.setViewName("product/detail");
//		mav.addObject("reviewList", reviewList);

		return mav;
	}

	/*
	 * @GetMapping("/detail") public String detail() {
	 * 
	 * 
	 * 
	 * return "/detail"; }
	 */

	@GetMapping("/product/addProductForm")
	public String addProductForm(Model model) {
		ProductVO productVO = new ProductVO();
		model.addAttribute("productVO", productVO);
		return "product/addProductForm";
	}

	@PostMapping("/product/addProductForm") 
	@ResponseBody
	public ModelAndView productInsert(@Valid ProductVO productVO, MultipartHttpServletRequest mtfRequest) throws IOException{
		
		productService.insertProduct(productVO);
		
		ProductVO userVO = productService.selectName(productVO);
		
		List<MultipartFile> fileList = mtfRequest.getFiles("imgs");
		
		FileUploadVO fileuploadVO;
		String savedName;
		
		int i=0;
		
		for(MultipartFile file : fileList) {
			
			fileuploadVO = new FileUploadVO();
			savedName =  uploadFile(file.getOriginalFilename(), file.getBytes());
			
			if(i == 0) {
				fileuploadVO.setMain("1");
				i++;
			}else {
				fileuploadVO.setMain("0");
			}
			
			fileuploadVO.setpNo(productVO.getpNo());
			fileuploadVO.setfOriName(file.getOriginalFilename());
			fileuploadVO.setfSaveName(savedName);
			fileuploadVO.setfSize(file.getSize());
			fileuploadVO.setType("p");
			
			productService.insertFile(fileuploadVO);
		}
		
		
		ModelAndView mav = new ModelAndView();

		if(userVO == null) {
			mav.addObject("msg","등록되었습니다");
			mav.setViewName("redirect:/");
		} else {
			mav.setViewName("redirect:/product/addProductForm");
		}
		return mav;
	}
	
	private String uploadFile(String originalName, byte[] fileDate) throws IOException {
		
		UUID uid = UUID.randomUUID();
		
		String savedName = "wplan_" +  uid.toString()+".jpg";
		File target = new File(uploadPath, savedName);
		
		//org.springframework.util 패키지의 FileCopyUtils는 파일 데이터를 파일로 처리하거나, 복사하는 등의 기능이 있다.
		FileCopyUtils.copy(fileDate, target);
		
		return savedName;
		
	}
	
	

}