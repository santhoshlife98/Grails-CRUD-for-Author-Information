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
        <g:link action="index">Home</g:link>
        <table class="table table-hover table-striped">
            <thead>
                <th>First Name</th>
                <th>Last Name</th> 
                <th>Gender</th>
                <th>DateofBirth</th>
                <th>Description</th>
              </thead>            
                            <tbody>
                                <g:each in="${ad}" status="i" var="authorInstance">
                                <tr>       
                                <td><g:link controller="AuthorData" action="show" id="${authorInstance.id}">${fieldValue(bean: authorInstance, field: "firstName")}</g:link></td>
                                <td>${fieldValue(bean: authorInstance, field: "lastName")}</td>
                                <td>${fieldValue(bean: authorInstance, field: "radio")}</td>
                                <td>${fieldValue(bean: authorInstance, field: "dateofBirth")}</td>
                                <td>${fieldValue(bean: authorInstance, field: "description")}</td>
                                </tr> 
                                </g:each>
                                </tbody>                    
                                </table>
                              
                            </body>
</html>
