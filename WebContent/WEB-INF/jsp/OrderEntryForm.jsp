<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<tr>
				<td> Nikon 5100 </td>
				<td> <form:input path="..."/> </td>
			</tr>
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