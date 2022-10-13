package my.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import my.com.entity.Member;
import my.com.service.MemberService;

@Controller
public class LoginController {
    @Autowired
    private MemberService memberService;

    @RequestMapping(value = { "", "/", "/showLogin" })
    public String showLogin(Model model) {
        model.addAttribute("member", new Member());
        return "login";
    }

    @RequestMapping("/checkLogin")
    public String checkLogin(@ModelAttribute("member") Member member, Model model,
            RedirectAttributes redirectAttributes, HttpSession session, HttpServletRequest request) {
        if (memberService.checkLogin(member.getEmail(), member.getPassword())) {
            session = request.getSession();
            session.setAttribute("email", member.getEmail());
            model.addAttribute("email1", member.getEmail());
            redirectAttributes.addFlashAttribute("email", member.getEmail());
            return "redirect:/showProfileMember";
        } else {
            model.addAttribute("errorMessage", "Email or password not correct !");
            return "login";
        }
    }

    @RequestMapping("/logout")
    public String logout(Model model, HttpSession session) {
        session.removeAttribute("email");
        return "redirect:/showLogin";
    }
}
