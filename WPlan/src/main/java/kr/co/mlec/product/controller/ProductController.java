package kr.co.mlec.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class ProductController { 
   
   @GetMapping("/jsp/product/dressType")
   public String dressType() {
      return "/product/dressType";
   }

   @GetMapping("/jsp/product/deco")
   public String deco() {
	   return "/product/deco";
   }
   
   @GetMapping("/jsp/product/food")
   public String food() {
	   return "/product/food";
   }
   
   @GetMapping("/jsp/product/tuxedo")
   public String tuxedo() {
	   return "/product/tuxedo";
   }
   
   @GetMapping("/jsp/product/location")
   public String location() {
	   return "/product/location";
   }
   
   @GetMapping("/JSP/PRODUCT/detail")
   public String detail() {
	   return "/pruduct/detail";
   }
}