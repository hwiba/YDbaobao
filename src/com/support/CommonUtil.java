package com.support;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

public class CommonUtil {
	public static int PRODUCTS_PER_PAGE = 16;
	public static int PAGE_NUM = 10;
	
	public static boolean isNumber(String str){
        boolean result = false; 
        try{
            Integer.parseInt(str);
            result = true ;
        }catch(Exception e){}
        return result ;
    }
	
	/**
	 * <pre>
	 * matched
	 *
	 * <pre>
	 * @param regex
	 * @param inputTxt
	 * @return
	 */
	public static boolean matched(String regex, String inputTxt) {
		return Pattern.matches(regex, inputTxt);
	}
	
	/**
	 * 
	 * @param result
	 * @return
	 */
	public static List<String> extractValidationMessages(BindingResult result) {
		List<ObjectError> list = result.getAllErrors();
		List<String> messageList = new ArrayList<>();
		System.out.println(list);
		for (ObjectError e : list) {
			messageList.add(e.getDefaultMessage());
		}
		return messageList;
	}
	
	/**
	 * 전체 상품 갯수를 페이지 당 보여줄 상품 갯수로 나누어서 전체 페이지를 구한다
	 * @param 전체 상품 갯수
	 * @return 총 페이지 수
	 */
	public static int countTotalPage(int count) {
		if(count % PRODUCTS_PER_PAGE == 0) {
			return count / PRODUCTS_PER_PAGE;
		}
		return count / PRODUCTS_PER_PAGE + 1;
	}

	/**
	 * 페이징 기능에서 블록 별 첫번째 숫자를 구한다
	 * @param 현재 페이지
	 * @return 페이징에서 첫 번째 수
	 */
	public static int startPage(int page) {
		int block = page / PAGE_NUM + 1;
		return (block - 1) * PAGE_NUM + 1;
	}

	/**
	 * 페이징 기능에서 블록 별 마지막 숫자를 구한다
	 * @param 현재 페이지, 전체 페이지 수
	 * @return 페이징에서 마지막 페이지 수(for 조건문 때문에 출력하고자 하는 수보다 1을 더해준다)
	 */
	public static int endPage(int page, int totalPage) {
		int block = page / PAGE_NUM + 1;
		
		// 마지막 페이질 경우
		if((block - 1) * PAGE_NUM + PAGE_NUM >= totalPage) {
			return totalPage + 1;
		}
		return (block - 1) * PAGE_NUM + PAGE_NUM + 1;
	}

	/**
	 * 페이징에서 next버튼 클릭시 다음 블록의 첫번째 수를 반환한다. (1~10이 1블록)
	 * @param 현재 페이지, 전체 페이지 수
	 * @return 다음 블록의 첫 번째 수
	 */
	public static Object nextBlock(int page, int totalPage) {
		int lastBlock = totalPage / PAGE_NUM; 
		int block = page / PAGE_NUM + 1;
		
		// 마지막 블록일 경우 마지막 페이지 반환
		if(block >= lastBlock) {
			return totalPage;
		}
		return block * PAGE_NUM + 1;
	}

	/**
	 * 페이징에서 prev버튼 클릭시 이전 블록의 첫번째 수를 반환한다. (1~10이 1블록)
	 * @param page
	 * @return 이전 블록의 첫 번째 수
	 */
	public static Object prevBlock(int page) {
		int block = page / PAGE_NUM + 1;
		
		// 첫 블록일 경우 첫 페이지 반환
		if(block <= 1) {
			return 1;
		}
		return (block - 2) * PAGE_NUM + 1;
	}
}
