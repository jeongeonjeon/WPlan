package kr.co.mlec.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class ProductController { 
   
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
   public String location() {
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
}