package app.article.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.article.model.Article;
import app.article.model.Category;
import app.article.repository.ArticleRepos;

@Service
public class ArticleService {
     @Autowired
     private ArticleRepos articleRepo;

     public Article create(Article a) {
          return articleRepo.save(a);
     }

     public Article create(String title, Integer category, String resume, String content) {
          Article a = new Article();
          a.setTitle(title);
          a.setCategory(new Category(category));
          a.setResume(resume);
          a.setContent(content);
          return create(a);
     }

     public List<Article> getAll() {
          return articleRepo.findAll();
     }

     public Article findById(Integer id) {
          return articleRepo.findById(id).orElse(null);
     }

}
