package app.article.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.article.model.Article;

public interface ArticleRepos extends JpaRepository<Article, Integer> {
}
