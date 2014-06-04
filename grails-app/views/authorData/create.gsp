<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page import="authorinformation.AuthorData" %>

<html>
	<head>
		<meta name="layout" content="main"/>
		<!DOCTYPE html>
	</head>
	<body>
        
        <g:form >
            First Name: <input type="text" class="form-control" name="firstName">
                    <div class="text-danger myerror"> 
                            <g:hasErrors bean="${ad}">      
                            <div class="errors" role="alert">
                                <g:eachError bean="${ad}" var ="error" field ="firstName" > 
                              <g:if test="${error in org.springframework.validation.FieldError}"><data-field-id ="${error.field}"></g:if><g:message error="${flash.message}"/>
                                </g:eachError>
                             </div>
                             </g:hasErrors>
<!--             <label>First Name: </label>
            <g:textField name="firstName"/><br/>-->
            Last Name: <input type="text" class="form-control" name="lastName">
                    <div class="text-danger myerror"> 
                            <g:hasErrors bean="${ad}">      
                            <div class="errors" role="alert">
                                <g:eachError bean="${ad}" var ="error" field ="lastName" > 
                              <g:if test="${error in org.springframework.validation.FieldError}"><data-field-id ="${error.field}"></g:if><g:message error="${flash.message}"/>
                                </g:eachError>
                             </div>
                             </g:hasErrors>
            
<!--            <label>Last Name: </label>
            <g:textField name="lastName"/><br/>-->
                    <div class="form-group">
                        <label for="number" class="col-sm-4 control-label">Gender:</label>
                    <div class="col-sm-offset-1  radio col-sm-2">
                        <label><input type="radio" name="radio"  value="Male" >Male</label>
                    </div>
                    <div class="radio col-sm-2">
                        <label><input type="radio" name="radio"   value="Female">Female</label>
                    </div>
                    </div> 
                    
                    
                    <div>Date of Birth : <g:datePicker name="dateofBirth" precision="day"  value="${authorInstance?.dateofBirth}"/></div>
                                        
                    <div>Description:<g:textArea name="description" value="" rows="5" cols="40"/>
                    <div class="text-danger myerror"> 
                            <g:hasErrors bean="${ad}">      
                            <div class="errors" role="alert">
                                <g:eachError bean="${ad}" var ="error" field ="description" > 
                              <g:if test="${error in org.springframework.validation.FieldError}"><data-field-id ="${error.field}"></g:if><g:message error="${flash.message}"/>
                                </g:eachError>
                             </div>
                             </g:hasErrors>
                    </div></div>
                            
                    <g:actionSubmit value="Create" action="save"/> 
                   </g:form>
	</body>
</html>