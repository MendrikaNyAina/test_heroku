<%@ page contentType="text/html;charset=UTF-8" language="java" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="java.util.ArrayList, web_version.model.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
     <title>Document</title>

</head>

<body>
     <nav class="navbar navbar-expand-sm bg-light">

          <div class="container-fluid">
               <!-- Links -->
               <ul class="navbar-nav">
                    <li class="nav-item">
                         <a class="nav-link" href="/calculer_cout"><h2>Ajouter un article</h2></a>
                    </li>
                    <li class="nav-item">
                         <a class="nav-link" href="/calculer_cout_regional"><h2>Liste des articles</h2></a>
                    </li>
               </ul>
          </div>
     </nav>
<div class="container">

<% 
     if(request.getAttribute("erreur")!=null){
          String error = (String) request.getAttribute("erreur");
%> 
     <div class="alert alert-danger">
          <strong>Erreur!</strong> <%= error %>      
     </div>                   
<%     }
%>
