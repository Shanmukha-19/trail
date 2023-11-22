<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Hybrid Encryption</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Rochester" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
     < <style>
 body  {
  background-image: url("img/cloud9.jpg");
  background-color: #cccccc;
  background-size:cover;
} 
h2{
text-transform:capitalize;
color:white;
}
table,tr,td,th {
	padding: 3px;
	text-alignment: center;
}
</style> 
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation
    ==========================================-->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <h1 style="color:white">Toward Efficient Encrypted Image Retrieval in Cloud Environment</h1></br>
      <ul class="nav navbar-nav">
         <li class="active" align="left"> <a href="ownerhome.jsp">Home</a> </li>                                               
     <li> <a href="upload.jsp">Upload</a> </li>
           <li><a href="viewfile.jsp">View Files</a></li> 
           <li><a href="viewreq.jsp">View Request</a></li>
         <li><a href="index.html">Logout</a></li> 
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
</nav>
<!-- Header -->
<header id="header">
  <!-- <div class="intro"> -->
    <div class="overlay">
      <div class="container">
        <div class="row">
          <div class="intro-text">
          <%
          String s11=request.getParameter("un");
          System.out.println(s11);
          //String s11=(String)session.getAttribute("un").toString();
          %>
            <center>
                          <form name="f1" action="upload2.jsp" method="POST"onsubmit="return validation()">
                             
										
											<div align="center">
												<br />
												<h3 style="color: #fed136">
													<b>Upload your files here...</b>
												</h3>
												<center>
												<table>
												<!-- <tr>
			                                      <td style="color:white;">File Id:</td>
			                                      <td><input type="num" name="fid" value="" required></td>
			                                    </tr> --> 
                                                     <tr>
			                                       <td style="color: white">User Email:</td>
			                                          <td ><input type="text" name="qemail" value="<%=session.getAttribute("pemail")%>" required ></td>
			                                       </tr>
			                                       <tr>
			                                      <%--  <td style="color: white">User Id:</td>
			                                          <td ><input type="number" name="uid" value="<%=session.getAttribute("un")%>" required ></td>
			                                       </tr> --%>
													<tr> 
														<td style="color: white">File Name:</td>
														<td><input type="text" name="fname">
														</td>
													</tr>
													<tr>
														<td align="center" style="color: white">Attach File:</td>
														<td align="center"><input type="file" name="file"></td>
													</tr>
													  <input type="hidden" name="encrypt" value="aes" >
													  
													  <!-- <tr>
             			                                 <td align="center" style="color: white">Encrypt:</td>
             			                                 <td><select required>
             		                                     <option value="">select</option>
             			                                 <option >AES</option>
             			                                 <option value="des">DES</option>
             			
             			                                  </select></td>
             			                                  
             			                                  
             		                                 </tr>  -->
													 
												</table><br>
												<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
												<input
													type="submit" value="upload"
													style="color: white; background-color: #608499">&nbsp;
											    <input
													type="submit" value="clear"
													style="color: white; background-color: #608499">
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</div>
									</form>
									</center>  
                        
               
                   
                
                
	<div>
	 
    </div>



          </div></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
          </br>
        </div>
      </div>
    </div>
  </div>
</header>

<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>



