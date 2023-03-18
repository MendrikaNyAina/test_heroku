package app.article.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.article.model.Category;
import app.article.repository.CategoryRepos;

@Service
public class CategoryService {
     @Autowired
     private CategoryRepos categoryRepo;

     public List<Category> findAll() {
          return categoryRepo.findAll();
     }
}
