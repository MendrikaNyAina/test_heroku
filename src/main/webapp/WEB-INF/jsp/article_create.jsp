<%@ page contentType="text/html;charset=UTF-8" language="java" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="java.util.List, app.article.model.*" %>
<jsp:include page="header.jsp" />

     <form class="" action="article" method="post">

                    <!-- Form Name -->
                    <legend>
                         <h1>Ajouter un article</h1>
                    </legend><br>

                    <!-- Text input-->
                    <div class="form-group">
                         <label class="col-md-6 control-label">Titre</label>
                         <div class="col-md-6 inputGroupContainer">
                              <div class="input-group">
                                   <input name="title" placeholder="..." class="form-control" type="text" >
                              </div>
                         </div>
                    </div>


                    <div class="form-group">
                         <label class="col-md-6 control-label">Categorie</label>
                         <div class="col-md-6 inputGroupContainer">
                                   <select class="input-group form-control" name="category">
                                        <% if(request.getAttribute("categories")!=null){
                                             List<Category>categories = (List<Category>)request.getAttribute("categories");
                                             for(Category c:categories){ %>
                                                  <option value="<%= c.getId() %>"><%= c.getName() %></option>
                                        <%    }
                                        } %>                                   
                                   </select>
                         </div>
                    </div>

                    <div class="form-group">
                         <label class="col-md-6 control-label">Resume</label>
                         <div class="col-md-6 inputGroupContainer">
                              <div class="input-group">
                                   <textarea name="resume" placeholder="..." class="form-control" rows="3">
                                   </textarea>
                              </div>
                         </div>
                    </div>
                    
                    <div class="form-group">
                         <label class="col-md-6 control-label">Content</label>
                         <div class="col-md-6 inputGroupContainer">
                              <div class="input-group">
                                   <textarea name="content" class="form-control" id="editor">
                                   </textarea>
                              </div>
                         </div>
                    </div>

                    
                    <button type="submit" class="btn btn-info">Enregister</button>
                    

          </form>
<script src="/ckeditor.js"></script>
<script type="text/javascript">
     ClassicEditor
     .create( document.querySelector( '#editor' ) )    
     .then( newEditor => {
          editor = newEditor;
     } )
        .catch( error => {
            console.error( error );
        } );
</script>
<jsp:include page="footer.jsp" />
