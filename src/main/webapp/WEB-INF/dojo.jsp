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
        <div class="card">
        <div class="card-body">
            <h5 class="card-title"><c:out value="${dojo.name}"/></h5>
            <div class="container">
            <h1>All ninjas</h1>
                <table class="table">
                    <thead>
                        <tr  class="table-dark">
                            <th>id#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Age</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${dojo.ninjas}" var="ninja">
                        <tr class="table-dark">
                            <td><c:out value="${ninja.id}"/></td>
                            <td><c:out value="${ninja.firstName}"/></td>
                            <td><c:out value="${ninja.lastName}"/></td>
                            <td><c:out value="${ninja.age}"/></td>
                            <td><a href="/ninjas/${ninja.id}/edit">Edit</a>/<a href="/ninjas/${ninja.id}/delete">Delete</a></td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>