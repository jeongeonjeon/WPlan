package kr.co.mlec.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.mlec.product.service.ProductService;
import kr.co.mlec.product.vo.ProductVO;

@Controller 
public class ProductController { 
   
	@Autowired
	private ProductService productService;
   
	@GetMapping("/product/dressType")
    public String dressType() {
       return "/product/dressType";
    }

    @GetMapping("/product/deco")
    public String deco() {
 	    return "/product/deco";
    }
   
    @GetMapping("/product/food")
    public String food() {
	   return "/product/food";
   }
   
   @GetMapping("/product/tuxedo")
   public String tuxedo() {
	   return "/product/tuxedo";
   }
   
   @GetMapping("/product/location")
   public String location(@RequestParam("p_name") String name) {
	   ProductVO proVO = new ProductVO();
	   
	   proVO.setP_name(name);
	   
	   ProductVO productVO = productService.selectName(proVO);
	   
	   
	   return "/product/location";
   }
   
   @GetMapping("/detail")
   public String detail() {
	   return "/detail";
   }
   
   @GetMapping("/makeWedding")
   public String makeWedding() {
	   return "/makeWedding";
   }
   
   @GetMapping("/addcom")
   public String addcom() {
	   return "/addcom/addcom";
   }
}