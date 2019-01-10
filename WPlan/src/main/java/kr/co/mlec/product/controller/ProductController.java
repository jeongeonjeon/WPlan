package kr.co.mlec.product.controller;

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

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductOptionService optionService;
	
	

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

	
	
	@GetMapping("/detail/{no}")
	public ModelAndView detail(ModelAndView mav , @PathVariable("no") int no) {
//		System.out.println("조회번호 : " + no);
		ProductVO productVO = productService.selectProductByNo(no);
		List<ProductOptionVO> optionList = optionService.selectOption(no);
		
//		System.out.println(productVO);
//		System.out.println(optionList);
		
		String name = "";
		String[][] option = new String[10][10];
		int j = -1;
		int k = 0;
		
//		System.out.println(optionList.get(0).getpOptionName());
		for(int i=0; i< optionList.size()- 1; i++) {
			
//			System.out.println(optionList.get(i).getpOptionName());
//			System.out.println(optionList.get(i).getpOptionValue());

			if(name.equals(optionList.get(i).getpOptionName())) {
				k++;
			}else {
				j++;
				k = 0;
			}
			name = optionList.get(i).getpOptionName();
			option[j][k] = optionList.get(i).getpOptionValue();
			
			System.out.println("j : "+ j+", k : "+k+"option : "+optionList.get(i).getpOptionValue());
			
		}
		for(int i=0;i<option.length;i++) {
			for(int z=0;z<option[i].length;z++) {
				if(option[i][z] == null)
					break;
//				System.out.print(option[i][z]+ " ");
			}
			System.out.println();
		}
		mav.addObject("productVO", productVO);
		mav.addObject("optionList", optionList);
		mav.setViewName("product/detail");
		
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