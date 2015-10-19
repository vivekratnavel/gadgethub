<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<style>
		.footer{
			position: absolute;
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
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
    	<div class="container">
    	<div class="col-xs-12" style="height:100px;"></div>
      		<div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6" style="text-align:center">
                        <p style="font-size:-webkit-xxx-large">Contact Gadgethub</p>
                  </div>
                  <div class="col-xs-12" style="height:30px;"></div>
                  <div class="col-md-3"></div>
                  <div class="col-md-6" style="text-align:center">
                        <p style="font-size:large">Contact us for all your gadget needs !</p>
                  </div>
                  <div class="col-md-3"></div>
            </div>
            <div class="col-xs-12" style="height:140px;;"></div>
            <div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-2" style="text-align:center">
                        <a href="mailto:gadgethub@gmail.com" target="_top"><img src="images/mail.png"/></a>
                  </div>
                  <div class="col-md-2" style="text-align:center">
                        <a href="https://www.facebook.com/osugadgethub"><img src="images/FB.png"/></a>
                  </div>
                  <div class="col-md-2" style="text-align:center">
                        <a href="https://twitter.com/osugadgethub"><img src="images/twitter.png"/></a>
                  <div class="col-md-3"></div>
            </div>
      	</div>  
      	</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>
