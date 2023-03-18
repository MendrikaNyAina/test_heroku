package app.article.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.article.service.ArticleService;
import app.article.service.CategoryService;

@Controller
public class ArticleController {
     @Autowired
     private ArticleService articleService;

     @Autowired
     private CategoryService categoryService;

     @GetMapping("/article")
     public String getForm(Model model) {
          try {
               model.addAttribute("categories", categoryService.findAll());
          } catch (Exception e) {
               model.addAttribute("erreur", e.getMessage());
          }
          return "article_create";
     }

     @PostMapping("/article")
     public String postForm(Model model, @RequestParam String title, @RequestParam Integer category,
               @RequestParam String resume, @RequestParam(required = false) String content) {
          try {
               articleService.create(title, category, resume, content);
          } catch (Exception e) {
               model.addAttribute("erreur", e.getMessage());
          }
          return getForm(model);
     }

     @GetMapping("/articles")
     public String getAll(Model model) {
          try {
               model.addAttribute("articles", articleService.getAll());
          } catch (Exception e) {
               model.addAttribute("erreur", e.getMessage());
          }
          return "article_list";
     }

     @GetMapping("/article/{id}")
     public String getById(Model model, @PathVariable Integer id) {
          try {
               model.addAttribute("article", articleService.findById(id));
          } catch (Exception e) {
               model.addAttribute("erreur", e.getMessage());
          }
          return "article_detail";
     }
}
