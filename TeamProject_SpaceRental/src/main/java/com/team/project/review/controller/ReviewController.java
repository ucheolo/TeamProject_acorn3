package com.team.project.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.team.project.review.dto.ReviewDto;
import com.team.project.review.service.ReviewService;
import com.team.project.users.service.UsersService;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService service;
	@Autowired
	private UsersService usersService;
	
	@RequestMapping("review/reviewupdateform")
	public String updateForm(HttpServletRequest request) {
		service.getData(request);
		return "review/reviewupdateform";
	}
	
	@RequestMapping("/review/reviewupdate")
	public String update(ReviewDto dto) {
		service.updateContent(dto);
		return "review/reviewupdate";
	}
	
	@RequestMapping("/review/delete")
	public String delete(int review_num, HttpServletRequest request) {
		service.deleteContent(review_num, request);
		return "redirect:/review/reviewlist";
	}
	
	@RequestMapping("/users/reviewDelete")
	public String delete2(int review_num, HttpServletRequest request) {
		service.deleteContent(review_num, request);
		return "redirect:/users/reviewList";
	}
	
	@RequestMapping("/review/reviewdetail")
	public String reviewdetail(HttpServletRequest request) {
		service.getDetail(request);
		return "review/reviewdetail";
	}
	
	@RequestMapping("/review/reviewlist")
	public String reviewlist(HttpServletRequest request, int space_num) {
		service.getList(request, space_num);
		return "review/reviewlist";
	}
	
	@RequestMapping("/users/reviewList")
	public ModelAndView reviewList(ModelAndView mView, HttpServletRequest request, HttpSession session) {
		service.getUsersNum(request, session);
		service.getList2(mView, request);
		mView.setViewName("users/reviewList");
		return mView;
	}
	
	@RequestMapping("/review/reviewInsertform")
	public String reviewInsertform(HttpServletRequest request, int cate_num, int space_num) {
		request.setAttribute("cate_num", cate_num);
		request.setAttribute("space_num", space_num);
		
		return "review/reviewInsertform";
	}
	
	@RequestMapping("/review/reviewInsert")
	public String insert(HttpServletRequest request, ReviewDto dto, HttpSession session, int cate_num, int space_num) {
		request.setAttribute("cate_num", cate_num);
		request.setAttribute("space_num", space_num);
		//글 작성자는 세션에서 얻어낸다.
		String writer=(String)session.getAttribute("id");
		//dto 는 글의 제목과 내용만 있으므로 글작성자는 직접 넣어준다.
	    dto.setReview_writer(writer);
	    dto.setSpace_num(space_num);
	    usersService.getReviewUsersnum(session, dto);
		service.saveContent(dto);
		return "review/reviewInsert";
	}
}
