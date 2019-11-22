<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>Regis Page</title>
<link rel="stylesheet" href="Template/BackEnd/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Template/BackEnd/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="Template/FrontEnd/font/font.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="Template/BackEnd/css/ace.min.css" />
	
		<link rel="stylesheet" href="Template/BackEnd/css/ace-rtl.min.css" />	
</head>
<body>
	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">Toeic</span>
									<span class="white" id="id-text2">Mỗi ngày</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; syphung.hust</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											
											<h4 class="header blue lighter bigger">
												<p><%= (request.getAttribute("msg")!= null)?request.getAttribute("msg"):"" %></p>
												<i class="ace-icon fa fa-coffee green"></i>
												 Nhập thông tin của bạn 
											</h4>

											<div class="space-6"></div>

											<form action="registerController" method="post" name = "form" onsubmit="return validate()">
												<fieldset>
												<div id="msg1" style="color:red"></div>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="fullname" placeholder="Full name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
												<div id="msg2" style="color:red"></div>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="username" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													
													<div id="msg3" style="color:red"></div>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="password" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>									
														</span>														
													</label>
													
													<div id="msg4" style="color:red"></div>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="repeatpass" placeholder="Repeat password" />
															<i class="ace-icon fa fa-retweet"></i>												
														</span>
													</label>
													
													
													<label class="block">
														<input type="checkbox" class="ace" />
														
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">Reset</span>
														</button>
														<input type="submit"class="width-65 pull-right btn btn-sm btn-success" value="Register">
	
													
													</div>
												</fieldset>
											</form>										
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
								
							</div><!-- /.position-relative -->

							
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		
		<script src="Template/BackEnd/js/jquery-2.1.4.min.js"></script>
		<script src="Template/FrontEnd/js/validate.js"></script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

</body>
</html>