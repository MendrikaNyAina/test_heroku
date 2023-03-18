<%@ page contentType="text/html;charset=UTF-8" language="java" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="java.util.List, app.article.model.*" %>
<jsp:include page="header.jsp" />
     <% if(request.getAttribute("article")!=null){
          Article ar=(Article)request.getAttribute("article");  %>
          <h1><%= ar.getTitle() %></h1>
          <h2>Categorie: <%= ar.getCategory().getName() %><h2>
          <h3> <%= ar.getResume() %><h3>
          <p><%= ar.getContent() %><p>
     <%     
     } %>


<jsp:include page="footer.jsp" />
