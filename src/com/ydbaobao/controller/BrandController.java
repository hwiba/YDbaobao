package com.ydbaobao.controller;

import java.util.stream.IntStream;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.support.JSONResponseUtil;
import com.ydbaobao.model.Brand;
import com.ydbaobao.model.PageConfigParam;
import com.ydbaobao.service.BrandService;
import com.ydbaobao.service.CategoryService;
import com.ydbaobao.service.ProductService;

@Controller
@RequestMapping("/brands")
public class BrandController {
	@Resource
	private BrandService brandService;
	@Resource
	private CategoryService categoryService;
	@Resource
	private ProductService productService;
	
	/**
	 * index.jsp에서 브랜드 메뉴 검색하는 곳에 사용
	 * @param 검색에 사용될 브랜드 이름의 첫글자(A~Z)
	 * @return 검색된 결과를 JSON 데이타로 전달
	 */
	@RequestMapping(value = "/{firstLetter}", method = RequestMethod.GET)
	public ResponseEntity<Object> searchByFirstLetter(@PathVariable String firstLetter) {
		return JSONResponseUtil.getJSONResponse(brandService.search(firstLetter), HttpStatus.OK);
	}
	
	/**
	 * 브랜드별 전체 상품
	 * @param 검색에 사용될 브랜드 Id, page 숫자
	 */
	@RequestMapping(value="/{brandId}/products", method=RequestMethod.GET)
	public String searchByBrandId(@RequestParam("page") String page, Model model, @PathVariable int brandId) {
		
		PageConfigParam p = new PageConfigParam(16, page, brandService.readBrandByBrandId(brandId).getBrandCount());

		if (p.getEnd() < p.getRange()) {
			model.addAttribute("nextBtn", true);
		}
		model.addAttribute("selectedIndex", p.getSelectedIndex());
		model.addAttribute("range", IntStream.range(p.getStart(), p.getEnd()).toArray());
		model.addAttribute("products", productService.readListByBrandId(brandId, p.getIndex(), p.getQuantity()));
		model.addAttribute("brands", brandService.readBrands());
		model.addAttribute("brand", brandService.readBrandByBrandId(brandId));
		model.addAttribute("categories", categoryService.read());
		model.addAttribute("firstLetterList", new Brand().getFirstLetters());

		return "products";
	}
}
