<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
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
		</style>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
      <div class="container" style="min-height:580px;">
      	<div class="row">
      		<div style="text-align:center">
      			<h2> Gadgets for Everyone !!
      		</div>
      	</div>
      	<div class="col-xs-12" style="height:100px;"></div>
      	<div class="row">
      		<div class="col-md-2">
      		</div>
      		<div class="col-md-4  just">
	      		GadgetHub's mission is to deliver electronic gadgets across the globe, ensuring top quality at a competitive price, every time.
				 
      		</div>
      		<div class="col-md-4 just">
      			We ensure that our customers have the widest range of products to choose from.
	      		Customer satisfaction is our top priority.
      		</div>
      		<div class="col-md-2">
      		</div>
      	</div>
      	<div class="col-xs-12" style="height:100px;"></div>
      	<div class = "row">
      		<div class="col-md-3" style="text-align:center">
      			<img src="images/iphone.jpeg" width="150px">
      			<div class="row">
      				<b>Iphone 6S</b>
      				<div>
      					<b>$ 400</b>
      				</div>
      			</div>

      		</div>
      		<div class="col-md-3" style="text-align:center">
      			<img src="images/gopro.jpg" width="200px">
      			<div class="row">
      				<b>GoPro Hero3</b>
      				<div>
      					<b>$ 400</b>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3" style="text-align:center">
      			<img src="images/tag.jpg" width="125px">
      			<div class="row">
      				<b>Tag Heuer</b>
      				<div>
      					<b>$ 1000</b>
      				</div>
      			</div>
      		</div>
      		<div class="col-md-3" style="text-align:center">
      			<img src="images/canon.jpg" width="190px">
      			<div class="row">
      				<b>Canon DSLR</b>
      				<div>
      					<b>$ 1000</b>
      				</div>
      			</div>
      		</div>
      	</div>
      </div>
      
	<jsp:include page="footer.jsp"/>
	</body>
</html>
