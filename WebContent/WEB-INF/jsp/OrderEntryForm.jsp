<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Order Entry Form</title>
</head>
<body>
	<form:form modelAttribute="order" method="post" action="purchase/submitItems">
		<table>
			<tr>
				<th>
					Item Name
				</th>
				<th>
					Quantity
				</th>
			</tr>
			<c:forEach var="item" items="${order.items}" varStatus="loop">
			<tr>
				<td> 
					<c:out value="${item.name}"/>
				</td>
				
				<td> <form:input path="items[${loop.index}].quantity"/> </td>
			</tr>
			</c:forEach>
			<%-- <tr>
				<td> tagHuer Carerra </td>
				<td> <form:input path=""/> </td>
			</tr>
			<tr>
				<td> GoPro Hero3 </td>
				<td> <form:input path="qunt3"/> </td>
			</tr>
			<tr>
				<td> Iphone 6s </td>
				<td> <form:input path="qunt4"/> </td>
			</tr>
			<tr>
				<td> Kindle </td>
				<td> <form:input path="qunt5"/> </td>
			</tr> --%>
		</table>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>