<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="authorinformation.AuthorData" %>

<html>
    <head>
       <meta name="layout" content="main"/>
       <title>Sample title</title>
    </head>
    <body>
       	
        <h1> Welcome to Author Details </h1>
        <h3>Click Here to Create Details</h3>
        <g:link controller="AuthorData" class="create" action="create" >Create</g:link>
        <g:link controller="AuthorData" class="list" action="list">List</g:link>
        </body>
</html>
    