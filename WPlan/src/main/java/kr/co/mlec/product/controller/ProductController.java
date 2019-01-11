package kr.co.mlec.product.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import kr.co.mlec.product.service.ProductService;
import kr.co.mlec.product.vo.ProductVO;
import kr.co.mlec.productOption.service.ProductOptionService;
import kr.co.mlec.productOption.vo.ProductOptionVO;
import kr.co.mlec.review.service.ReviewService;
import kr.co.mlec.review.vo.ReviewVO;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductOptionService optionService;
	
	@Autowired
	private ReviewService reviewService;
	
	

	@GetMapping("/product/{category}")
    public ModelAndView category(@PathVariable("category") String category) {
		ModelAndView mav = new ModelAndView();
		
		if(category.equals("dress")) {
			
			mav.setViewName("/product/dressType");
			return mav;
		}
		
		System.out.println(category);
		List<ProductVO> productList = productService.selectAllProduct(category);
		System.out.println(productList);
		
		//나중에 상품 대표 이미지도 리퀘스트 영역에 올려서 넘겨주기
		
		mav.addObject("productList", productList);
		mav.setViewName("/product/" + category);
 	    
 	   return mav;
   }
	
	
	
	
	

	@GetMapping("/product/dress/{dressType}")
	public String dress(@PathVariable("dressType") String dressType) {

		return "/product/dress";
	}

	
	//상세페이지 
	@GetMapping("/detail/{no}")
	public ModelAndView detail(ModelAndView mav , @PathVariable("no") int no) {
		
		//productVO 가져오기
		ProductVO productVO = productService.selectProductByNo(no);
		//productOptionList 가져오기
		List<ProductOptionVO> optionList = optionService.selectOption(no);
		//후기리스트 가져오기
		List<ReviewVO> reviewList = reviewService.selectAllReview(no);

		// 위 Array에서 List로 변경, DB연결하여 확인 할 것
		List<ArrayList<String>> options = new ArrayList<ArrayList<String>>(); //value 배열들의 배열
		
		String name = "";  //optionName 초기화
		name = optionList.get(0).getpOptionName(); //0번지 name값으로 name 초기화 
		ArrayList<String> innerList = new ArrayList<>();   //하나의 옵션 name에 대한 value 배열
		for(int i=0; i< optionList.size(); i++) {
			
			//name이 다를때 
			if(!name.equals(optionList.get(i).getpOptionName()) ) {
				options.add(innerList);
				innerList=new ArrayList<>();
				innerList.add(optionList.get(i).getpOptionValue());
				name = optionList.get(i).getpOptionName();
				
			}else {  //name이 같을 때
				
				innerList.add(optionList.get(i).getpOptionValue());
				name = optionList.get(i).getpOptionName();
			}
			
			if(i == optionList.size()-1) {
				options.add(innerList);
			}
			
			
		}
		
		
		name = "";  //name 초기화
		//옵션의 name만 모아놓은 리스트
		List<String> optionNameList = new ArrayList<>();
		for(int i= 0 ; i < optionList.size()-1; i++) {
			if(!name.equals(optionList.get(i).getpOptionName())) {
				name = optionList.get(i).getpOptionName();
					optionNameList.add(name);
			}
		}
		
		
		mav.addObject("productVO", productVO);
		mav.addObject("options", options);  //옵션 배열의 배열
		mav.addObject("optionNameList", optionNameList); //옵션 네임의 배열
		mav.setViewName("product/detail");
		mav.addObject("reviewList", reviewList);
		
		return mav;
	}
	
	/*@GetMapping("/detail")
	public String detail() {
		
		
		
		return "/detail";
	}
	*/
	

	@GetMapping("/makeWedding")
	public String makeWedding() {
		return "/makeWedding";
	}

}