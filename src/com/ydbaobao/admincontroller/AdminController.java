package com.ydbaobao.admincontroller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ydbaobao.dao.GradeDao;
import com.ydbaobao.service.AdminConfigService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private GradeDao gradeDao;
	@Resource
	private AdminConfigService adminConfigService; 

	/**
	 * 관리자 페이지 접근을 위한 GET 요청을 응답. session 체크를 하여 sessionAdmin이 Null일 경우 관리자 번호
	 * 체크 페이지로 포워딩.
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String home(HttpSession session) {
		if (session.getAttribute("sessionAdmin") == null) {
			return "admin/adminCheck";
		}
		return "admin/admin";
	}

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String check() {
		return "admin/adminCheck";
	}

	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String checkForm(@RequestParam String adminPassword,
			HttpSession session) {
		if (adminPassword.equals(adminConfigService.read().getAdminPassword())) {
			session.setAttribute("sessionAdmin", adminPassword);
			return "admin/admin";
		}
		return "admin/adminCheck";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if (null == session.getAttribute("sessionAdmin")) {
			return "admin/adminCheck";
		}
		session.removeAttribute("sessionAdmin");
		return "redirect:/";
	}

	@RequestMapping(value = "/manage/grade", method = RequestMethod.GET)
	public String manageGrade(Model model) {
		model.addAttribute("grades", gradeDao.readGrades());
		return "admin/gradeManager";
	}
}
