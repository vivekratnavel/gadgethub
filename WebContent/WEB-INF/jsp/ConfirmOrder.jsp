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
	            .container{
	            	min-height:100%;
	            }
	            html,
      body {
        height: 100%;
        /* The html and body elements cannot have any padding or margin. */
      }

      /* Wrapper for page content to push down footer */
      
	            
			</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
		<div class="container" style="min-height:580px;">
			<div class="row" style="text-align:center;">
			<h2> Your order has been placed !!</h2>
			<h4>Confirmation Code: <%=session.getAttribute("confirmationCode") %></h4>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>