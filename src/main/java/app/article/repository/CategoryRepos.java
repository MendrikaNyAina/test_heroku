package app.article.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.article.model.Category;

public interface CategoryRepos extends JpaRepository<Category, Integer> {

}
