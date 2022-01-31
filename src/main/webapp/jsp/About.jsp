<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YouTunes | About Us</title>
<!--  Bootstrap StyleSheet CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	


</head>
<body>
<jsp:include page="TopNav.jsp" flush="true" />

<div class="container py-5 width-35">
	
	<div class="row">
		<div class="col-12">
			<h3 class="text-center">YouTunes</h3>
		</div>
	</div>
	
	<br />
	<div class="row">
		<div class="col-4">
			<img src="/youtunes/images/youtunes.png" />
		</div>
		
		<div class="col-8">
			<p>
        		YouTunes is a new streaming music service, comparable to similar 
       			streaming services like Apple Music, Spotify, Amazon Music Unlimited, Google Play Music, 
        		Tidal, and others, though it has a leg up over many of its competitors with 
        		lossless audio and Spatial Audio support. YouTunes boasts access to more than 350 million albums.
       			
      		</p>
		</div>
	</div>

</div>


<jsp:include page="ScriptFooter.jsp" flush="true" />

</body>
</html>