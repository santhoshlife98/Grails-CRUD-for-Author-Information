<%@ page import="authorinformation.AuthorData" %>

<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Sample title</title>
    </head>
    <body>
        <g:form name="myForm" action="update" id="${ad.id}">
        <h1>Welcome To Author Information</h1>
      <div><p>In this page you can edit the Author Details</p></div>
      
    <div>  
    <table class="table table-hover table-striped">
           
        <div> First Name: <g:textField name="firstName" type="text" value="${ad.firstName}"/></div>
        <div> Last Name: <g:textField name="lastName" type="text" value="${ad.lastName}"/> </div>  
<!--        <div> Gender: <g:textField name="radio" type="text" value="${ad.radio}"/> </div>-->
        <div class="form-group">
                        <label for="number" class="col-sm-4 control-label">Gender:</label>
                    <div class="col-sm-offset-1  radio col-sm-2">
                        <label><input type="radio" name="radio"  value="Male" >Male</label>
                    </div>
                    <div class="radio col-sm-2">
                    <label><input type="radio" name="radio"   value="Female">Female</label>
            </div>
        </div> 
        <div> DateofBirth: <g:datePicker name="dateofBirth" precision="day" value="${ad.dateofBirth}"/>
        <div> Description:<g:textArea name="description" value="${ad.description}" rows="5" cols="40"/>
         
            </table></div>
    
            <g:submitButton name="update" value="Update" />
            </g:form>
    </body>
</html>