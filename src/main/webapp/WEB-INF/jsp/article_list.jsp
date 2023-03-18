<%@ page contentType="text/html;charset=UTF-8" language="java" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="java.util.List, app.article.model.*" %>
<jsp:include page="header.jsp" />

                    <!-- Form Name -->
                    <legend>
                         <h1>Articles</h1>
                    </legend><br>

                    <!-- Text input-->
                    <table class="table">
                         <tr>
                              <th>Titre</th>
                              <th>Resume</th>
                              <th>Categorie</th>
                              <th>Actions</th>
                         </tr>
                         <% if(request.getAttribute("articles")!=null){
                              List<Article>liste=(List<Article>)request.getAttribute("articles");
                              for(Article a:liste){ %>
                                   <tr>
                                        <td><%= a.getTitle() %></td>
                                        <td><%= a.getResume() %></td>
                                        <td><%= a.getCategory().getName() %></td>
                                        <td><a href="article/<%= a.getId() %>">Voir</a></td>
                                   </tr>
                                   
                         <% }} %>
                    </table>


<jsp:include page="footer.jsp" />
