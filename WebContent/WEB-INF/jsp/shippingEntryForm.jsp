<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h2 style="text-align:center">Payment Info</h2>
		</div>
		<div class="col-xs-12" style="height:20px;"></div>
		<div class="row"  >
		<form:form modelAttribute="shipping" method="post" action="submitShipping">
		<table style="width:50%;text-align:center;margin:auto">
			<tr><td> 
					<c:out value="Name"/>
				</td>
				
				<td> <form:input path="Name"/> </td>
			</tr>
			<tr><td> 
					<c:out value="Address Line 1: "/>
				</td>
				
				<td> <form:input path="AddressLine1"/> </td>
			</tr>
			<tr><td> 
					<c:out value="Address Line 2:"/>
				</td>
				
				<td> <form:input path="AddressLine2"/> </td>
			</tr>
			<tr><td> 
					<c:out value="State:"/>
				</td>
				
				<td> <form:input path="state"/> </td>
			</tr>
			<tr><td> 
					<c:out value="Zip: "/>
				</td>
				
				<td> <form:input path="zip"/> </td>
			</tr>
		<tr>
					<td>
					</td>
					<td>
						<input type="submit" value="Submit" class="btn btn-default" />
					</td>
				</tr>
			
		</table>
		
	</form:form>
</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>