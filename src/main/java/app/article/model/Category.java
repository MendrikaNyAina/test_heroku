package app.article.model;

import javax.persistence.Entity;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Category extends HasId {
     private String name;

     public Category() {

     }

     public Category(Integer id) {
          super(id);
     }
}
