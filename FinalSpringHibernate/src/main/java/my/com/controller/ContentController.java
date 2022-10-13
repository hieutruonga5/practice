package my.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import my.com.service.ContentService;

@Controller
public class ContentController {
    @Autowired
    private ContentService contentService;

    @RequestMapping("/showListContent")
    public String showListContent(Model model) {
        model.addAttribute("contents", contentService.findAll());
        return "ViewContent";
    }

    @RequestMapping("/deleteContent")
    public String deleteContent(@ModelAttribute("id") int id, Model model) {
        contentService.deleteById(id);
        return "redirect:/showListContent";
    }
}
