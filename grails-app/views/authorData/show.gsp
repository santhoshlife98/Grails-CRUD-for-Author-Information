<%@ page import="authorinformation.AuthorData" %>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sample title</title>
    </head>
    <body>
        <g:form name="myForm"  >
        <g:link action="index">Home</g:link>
        <h1>Welcome To Author Information</h1>
    <div>  
    <table class="table table-hover table-striped">
           
        <div> First Name:  <b>${ad.firstName}</b></div>
        <div> Last Name:   <b>${ad.lastName}</b></div>  
        <div> Gender:      <b>${ad.radio}</b></div>
        <div> DateofBirth: <b>${ad.dateofBirth}</b></div>
        <div> Description: <b>${ad.description}</b></div>
        
         
            </table></div>
    
            <g:link action="edit" id="${ad.id}">Edit</g:link>
            <g:link action="delete" id="${ad.id}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Delete</g:link>
            </g:form>
    </body>
</html>
