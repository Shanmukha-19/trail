<%@ page import="java.sql.*" %>
<%

 //String email=(String)session.getAttribute("pemail");
//System.out.println(email); 
//String id=(String)session.getAttribute("id");
String id=request.getParameter("id"); 
System.out.println(id);
try
{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/imageretrieval", "root" , "ROOT"); 
		PreparedStatement ps1=con.prepareStatement("select * from upload where id='"+id+"'");
		ResultSet rs=ps1.executeQuery();
		%>
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
          <li> <a href="vfile.jsp">View Upload Files</a> </li>
          <li><a href="vgraphs.jsp">View Graphs</a></li>
          <li><a href="userhome.jsp">logout</a></li> 
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
            <center>
                          <h2 align="center">View Upload Files</h3>
                 <center> <table border="1" style="background-color: #D8DBF4">
            	<tr align="center">
            	    <th>id</th>
            		<th>File Name</th>
            		<th>Image</th>
            		</tr>
                    <%while(rs.next())
            		{
            		
            		%>
            		 <tr>
			 <td align="center"><font color="black"><%=rs.getString(1)%></font></td>
			   
			  <td align="justify"><font color="black"><%=rs.getString(2)%></font></td>
			  <%-- <td align="center"><font color="black"><%=rs.getString(3)%></font></td> --%>
			   
			  <div >
			 <td><img src="v1.jsp?id=<%=rs.getString(1)%>&&fname=<%=rs.getString(2)%>"style="width:100px;,height:100px";></img></td>
			</tr>
			
			
			<%} %>
			</table></center>
		<% 
	//	}
}
catch(Exception e)
{
	e.printStackTrace();
}

		%>
						 
                        
               
                   
                
                
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