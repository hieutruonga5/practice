package my.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.javafx.sg.prism.NGShape.Mode;

import my.com.entity.Member;
import my.com.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping("/showProfileMember")
	public String checkLogin(@ModelAttribute("email") String mail, Model model) {
		Member member = memberService.findByEmail(mail);

		model.addAttribute("member", member);
		return "ProfileMember";
	}

	@RequestMapping("/showRegister")
	public String showRegister(Model model) {
		model.addAttribute("member", new Member());
		return "Register";
	}

	@RequestMapping("/Register")
	public String Register(@ModelAttribute("member") Member member, Model model) {
		if (memberService.isEmailExist(member.getEmail())) {
			model.addAttribute("errorMessage", "Email is exist !");
			return "redirect:/showRegister";
		} else {
			memberService.insertMember(member);
			return "redirect:/showLogin";
		}
	}

	@RequestMapping("/showEditMember")
	public String showEditMember(@ModelAttribute("email") String email, Model model) {
		model.addAttribute("isEdit", Boolean.TRUE);
		Member member = memberService.findByEmail(email);
		model.addAttribute("member", member);
		return "ProfileMember";
	}

	@RequestMapping("/EditMember")
	public String EditMember(@ModelAttribute("member") Member member, Model model,
			RedirectAttributes redirectAttributes) {
		memberService.editMember(member);
		redirectAttributes.addFlashAttribute("email", member.getEmail());
		return "redirect:/showProfileMember";
	}

	@RequestMapping("deleteMember")
	public String deleteMember(@ModelAttribute("id") String id, Model model) {
		
		return "redirect:/showListContent";
	}
}
