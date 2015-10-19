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
		<form:form modelAttribute="payment" method="post" action="submitPayment">
		<table style="width:50%;margin:auto">
			<tr><td> 
					<c:out value="Credit Card Number"/>
				</td>
				
				<td> <form:input path="ccNo"/> </td>
			</tr>
			<tr><td> 
					<c:out value="CVV Number"/>
				</td>
				
				<td> <form:input path="cvvNo"/> </td>
			</tr>
			<tr><td> 
					<c:out value="Expiry Date"/>
				</td>
				
				<td> <form:input path="expDate"/> </td>
			</tr>
			<tr><td> 
					<c:out value="Credit Card Holder name"/>
				</td>
				
				<td> <form:input path="owner"/> </td>
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