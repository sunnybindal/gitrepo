<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rama Pipe</title>
<%@ include file="/WEB-INF/jsp/style.jsp"%>
<%@ include file="/WEB-INF/jsp/script.jsp"%>
<!--testimonial script end here-->
<script language="javascript" type="text/javascript">
	function validatefrm() {
		var fname = document.frmchk.fname.value;
		var email = document.frmchk.email.value;
		var mobno = document.frmchk.mobno.value;
		//var dob=document.frmchk.dob.value;
		//var matstatus=document.frmchk.matstatus.value;
		//var selgender=document.frmchk.selgender.value;
		//var usradd=document.frmchk.usradd.value;
		var keyskill = document.frmchk.keyskill.value;
		//var usrqualification=document.frmchk.usrqualification.value;

		if (fname == "") {
			alert("Name should not be blank.");
			document.frmchk.fname.focus();
			return false;
		} else if (email == "") {
			alert("Email should not be blank.");
			document.frmchk.email.focus();
			return false;
		} else if (mobno == "") {
			alert("Mobile No. should not be blank.");
			document.frmchk.mobno.focus();
			return false;
		} else if (isNaN(mobno)) {
			alert("Mobile No. should be number.");
			document.frmchk.mobno.focus();
			return false;
		} else if (keyskill == "") {
			alert("Enquiry should not be blank.");
			document.frmchk.keyskill.focus();
			return false;
		}

	}
</script>
</head>

<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>

	<!-- Banner Start Here -->
	<!-- <div class=" banner">
		<img src="images/banner1.jpg" class="img-responsive"  width="30%" height="30%"/>
	</div> -->
	<!-- Banner End Here -->

	<!-- Content Bottom Box Start Here -->
	<div class="container contentBottom">

		<aside class="col-xs-12 col-md-7 welcomeTxt">
		<h3 class="col-title">Contact Info</h3>
		<span class="liner"></span>
		<p>We would be glad to have feedback from you. Drop us a line,
			whether it is a comment, a question, a work proposition or just a
			hello. You can use either the form below or the contact details on
			the right.</p>
		<!-- <form name="frmchk" id="frmchk" method="post" action=""
			onsubmit="return validatefrm();">

			<div class="form-group">
				<label for="exampleInputPassword1">Name</label> <input type="Name"
					class="form-control" name="fname" id="fname" value="">
			</div>

			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="email" class="form-control" name="email" id="email" value="">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Mobile No.</label> <input
					type="password" class="form-control" name="mobno" id="mobno"
					value="">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Requirement Details</label>
				<textarea class="form-control" rows="3" name="keyskill"
					id="keyskill"></textarea>
				</label>
			</div>
			<br />
			<button type="submit" class="btn btn-default" style="background:#993300; color:#FFFFFF;">Submit</button>
			<input type="submit" class="btn btn-default"
				style="background: #993300; color: #FFFFFF;" name="btnsend"
				id="btnsend" value="Send" />
		</form> -->
		<br />
		<br />
		</aside>
		<!-- Welcome Box Text End -->
		<aside class="col-xs-12 col-md-5 welcomeTxt"
			style="border:1px dashed #999999; border-radius:3px; padding-bottom:8px; padding-top:8px;">
		<h3 class="col-title">Send Your Enquiry</h3>
		<span class="liner"></span>
		<p>You can also reach us here:</p>
		<p>
			<strong>Sales office:</strong> B-70/89, DSIIDC Complex, Industrial Area, Lawrence Road, Delhi-110035

		</p>
		<p>
			<strong>Mobile:</strong> (+91) 9899724686, 9810734305
		</p>

		<p>
			<strong>Email:</strong> ramapipe@gmail.com
		</p>



		</aside>
	</div>

	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
<script>
$(document).ready(function(){
	$("ul.topnav li:nth-child(5)").addClass("active");
});
</script>

</body>
</html>
