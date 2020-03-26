package Controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.goodsDetailService;


	@Controller
public class shopDetailController {
	@Autowired
	goodsDetailService goodsDetailService;
	@RequestMapping("goods/goodsDetail")
	public String goodsDetail(@RequestParam(value = "product") Long GOODS_SEQ,
			Model model) {
		goodsDetailService.goodsDetail(model, GOODS_SEQ);
		return "shop/product-page";
	}
}
