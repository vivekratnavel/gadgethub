<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="edu.osu.cse5234.model.*"
    %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>Order Entry Form</title>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
			<style>
			.footer{
				bottom: 0;
			    width: 100%;
			    height: 60px;
			    background-color: #f5f5f5;
			    padding-top: 10px;
			}
			.just{
	                  text-align: justify;
	                      -moz-text-align-last: justify;
	                      text-align-last: justify;
	            }
	            tr{
	            	margin:5px;
	            }
	            td {
	            	margin:10px;
	            	padding:10px;
	            	text-align:right;
	            }
			</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		<div class="container" style="min-height:580px;">
			<div class="row">
				<h2 style="text-align:center"> Confirm Order</h2>
			</div>
			<div class="col-xs-12" style="height:20px;"></div>
			<div class="row" style="text-align:center">
	
				<form:form method="POST" action="ConfirmOrder">
					<% Order order = (Order) (request.getSession().getAttribute("order"));%>
					<c:forEach var="item" items="${order.items}">
					Name: <c:out value="${item.name}" />
					<br/>
					Quantity: <c:out value="${item.quantity}" />
					<br/><br/>
					</c:forEach>
					<input type="submit" value="Confirm Order" class="btn btn-default" />
				</form:form>
			</div>
		</div>
	
		<jsp:include page="footer.jsp"/>
	</body>
</html>