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
    <div class="container">
    <h1>All dojos</h1>
        <table class="table">
            <thead>
                <tr class="table-dark">
                    <th>id#</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dojos}" var="dojo">
                <tr class="table-dark">
                    <td><c:out value="${dojo.id}"/></td>
                    <td><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"/></a></td>
                    <td><a href="/dojos/${dojo.id}/edit">Edit</a>/<a href="/dojos/delete/${dojo.id}">Delete</a></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
</div>
    <div class="container">
    <h1>New Dojo</h1>
        <form:form action="/dojos/create" method="post" modelAttribute="dojo">
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