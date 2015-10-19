<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<style>
		.footer{
			/*position: absolute;*/
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
      		<div class="row">
                  <div class="col-md-3"></div>
                  <div class="col-md-6" style="text-align:center">
                        <h2>The People behind the magic !!</h2>
                  </div>     
                  <div class="col-md-3"></div>
            </div>
            <div class="col-xs-12" style="height:50px;"></div>
            <div class="container">
      	     <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-5 just">
                              Currently pursuing his Master's in Computer Science at The Ohio State University, Vivek is a technology enthusiast who enjoys playing sports in his free time. Extremely innovative problem solver. A master chef who loves to experiment in the kitchen and produces restaurant quality dishes time and again. He is inseparable from his laptop and is always looking for a challenge. Follow Vivek Ratnavel on Twitter: @vivekratnavel
                        </div>

                        <div class="col-md-3" style="text-align:center">
                              <img src="images/vivek.JPG" width="200px" class="img-rounded">
                              <div> <b>Vivek Subramanian </b></div>
                              <div>Chief Executive Officer</div>
                        </div>
                        <div class="col-md-2"></div>
                 </div>
                 <div class="col-xs-12" style="height:30px;"></div>
                  
                 
      	     <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-3" style="text-align:center">
                              <img src="images/saurabh.jpg" width="200px" class="img-rounded">
                              <div class="row" style="align:center"> 
                                    <div><b>Saurabh Gupta</b></div>
                                    Chief Technical Officer
                              </div>
                              
                        </div>
                        <div class="col-md-5 just" >
                              Currently pursuing his Master's in Computer Science at The Ohio State University. Saurabh is a gadget lover who loves to travel. When not busy watching TV series, he wastes his time studying. Avid fan of street food. Follows politics closely. Always ready to party, with a drink in-hand. A sports fanatic who enjoys playing a game of table tennis and to go for a swim.
                        </div>
                        <div class="col-md-2"></div>
                  </div>
                  <div class="col-xs-12" style="height:30px;"></div>
                  <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-5 just">
                              Currently pursuing her Master's in Computer Science at The Ohio State University, Soumyashree is music lover. A foodie, who doesn't like to cook. She is a very cheerful person carrying a happy aura around all the time. She is also a very dynamic person, who likes to learn different technologies and concepts. In her free time, she likes to go exploring places and trying adventurous sports.
                        </div>
                        <div class="col-md-3" style="text-align:center">
                              <img src="images/somyashree.jpg" width="200px" class="img-rounded">
                              <div> <b>Soumyashree Gad</b> </div>
                              <div>Chief Operations Officer</div>
                        </div>
                        <div class="col-md-2"></div>
                  </div>
                  <div class="col-xs-12" style="height:30px;"></div>
                  <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-3" style="text-align:center">
                              <img src="images/Veena.JPG" width="200px" class="img-rounded">
                              <div> <b>Veena Rajasekar </b></div>
                              <div>Chief Marketing Officer</div>
                        </div>
                        <div class="col-md-5 just">
                              Currently pursuing her Master's in Computer Science at The Ohio State University, Veena is a dog lover who is also very passionate about solving real world problems. She is very quick in grasping new concepts and adapting to changes. A baking master who loves to make different kinds of pastries. A huge TV series buff. She also enjoys traveling around the world and experiencing different cultures and cuisines.
                        </div>
                        <div class="col-md-2"></div>
                  </div>
             	 <div class="col-xs-12" style="height:30px;"></div>   
            </div>
      	</div>  
		<jsp:include page="footer.jsp"/>
	</body>
</html>
