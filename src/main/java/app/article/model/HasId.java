package app.article.model;

import javax.annotation.Generated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import lombok.Getter;
import lombok.Setter;
import static javax.persistence.GenerationType.IDENTITY;

@MappedSuperclass
@Getter
@Setter
public class HasId {
     @Id
     @GeneratedValue(strategy = IDENTITY)
     public Integer id;

     public HasId() {
     }

     public HasId(Integer id) {
          setId(id);
     }
}
