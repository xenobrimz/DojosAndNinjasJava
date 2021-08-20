<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>create dojo</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
</div>
    <div class="container">
    <h1>Edit Dojo</h1>
        <form:form action="/dojos/${dojo.id}/edit" method="post" modelAttribute="dojo">
        <p>
            <form:label path="name">Dojo name</form:label>
            <form:errors path="name"/>
            <form:input path="name"/>
        </p> 
        <input class="btn btn-primary" type="submit" value="Submit"/>
        </form:form>    
        <a href="/ninjas">Create ninjas</a>
</div>
</body>
</html>