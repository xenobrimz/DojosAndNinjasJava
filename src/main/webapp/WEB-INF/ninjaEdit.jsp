<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>edit ninja</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
</div>
    <div class="container">
    <h1>Edit Ninja</h1>
        <form:form action="/ninjas/${ninja.id}/update" method="post" modelAttribute="ninja">
        <div class="form-group-row">
            <form:label path="dojo">Dojo: </form:label>
            <form:errors path="dojo"/>
            <form:select path="dojo"> 
                <c:forEach items="${dojos}" var="dojo">            
                    <form:option value="${dojo.id}" label="${dojo.name}"/>  
                </c:forEach> 
            </form:select>
        </div>
        <div class="form-group-row">
            <form:label path="firstName">firstName: </form:label>
            <form:errors path="firstName"/>
            <form:input path="firstName"/>
        </div> 
        <div class="form-group-row">
            <form:label path="lastName">lastName: </form:label>
            <form:errors path="lastName"/>
            <form:input path="lastName"/>
        </div> 
        <div class="form-group-row">
            <form:label path="age">age: </form:label>
            <form:errors path="age"/>
            <form:input path="age"/>
        </div> 
        <input class="btn btn-primary" type="submit" value="Submit"/>
        </form:form>    
        <a href="/dojos">Create dojos</a>
</div>
</body>
</html>