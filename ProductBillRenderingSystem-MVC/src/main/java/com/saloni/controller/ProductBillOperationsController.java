package com.saloni.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.saloni.model.Product;

@Controller
public class ProductBillOperationsController {
	@RequestMapping("/bill")
	public String getBill(Map<String,Object> map)
	{
		Product p = new Product(111,"laptop",2,89000);
		double subtotal=p.getQunty()*p.getPrice();
		double gst= subtotal*0.18/100;
		double discount = subtotal>5000? subtotal*0.10/100: 0;
		double finalbill=subtotal+gst-discount;
		
		map.put("product", p);
		map.put("subTotal", subtotal);
		map.put("GST", gst);
		map.put("Discount", discount);
		map.put("FinalBill", finalbill);
		return "product";
		
	}

}
