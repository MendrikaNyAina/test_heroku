package app.article.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Article extends HasId {
     private String title;
     private String content;
     @ManyToOne
     @JoinColumn(name = "category_id")
     private Category category;

     private String resume;
}
