<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="description" content="responsive photo gallery using colorbox" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>Admin page</title>
	
		<link rel="stylesheet" href="Template/BackEnd/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Template/BackEnd/font-awesome/4.5.0/css/font-awesome.min.css" />
		<link rel="stylesheet" href="Template/BackEnd/css/colorbox.min.css" />
		<link rel="stylesheet" href="Template/FrontEnd/font/font.css" />
		<link rel="stylesheet" href="Template/BackEnd/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<link rel="stylesheet" href="Template/BackEnd/css/ace-skins.min.css" />
		<link rel="stylesheet" href="Template/BackEnd/css/ace-rtl.min.css" />
		<script src="Template/BackEnd/js/ace-extra.min.js"></script>		
</head>
<body class="no-skin">
	<jsp:include page="dashboard/Header.jsp"/>
	<jsp:include page="dashboard/sidebar.jsp"/>
	<div class="main-content">
		<div class="main-content-inner">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
								<li>
									<i class="ace-icon fa fa-home home-icon"></i>
									<a href="HomeForward">Home</a>
								</li>						
				</ul><!-- /.breadcrumb -->
			</div>
		
		</div>		
	</div>
	
	<jsp:include page="dashboard/footer.jsp"/>



			
	<!-- basic scripts -->
<script src="Template/BackEnd/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='Template/BackEnd/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="Template/BackEnd/js/bootstrap.min.js"></script>
<!-- page specific plugin scripts -->
<script src="Template/BackEnd/js/jquery.colorbox.min.js"></script>
<!-- ace scripts -->
<script src="Template/BackEnd/js/ace-elements.min.js"></script>
<script src="Template/BackEnd/js/ace.min.js"></script>
<script type="text/javascript">
			jQuery(function($) {
	var $overflow = '';
	var colorbox_params = {
		rel: 'colorbox',
		reposition:true,
		scalePhotos:true,
		scrolling:false,
		previous:'<i class="ace-icon fa fa-arrow-left"></i>',
		next:'<i class="ace-icon fa fa-arrow-right"></i>',
		close:'&times;',
		current:'{current} of {total}',
		maxWidth:'100%',
		maxHeight:'100%',
		onOpen:function(){
			$overflow = document.body.style.overflow;
			document.body.style.overflow = 'hidden';
		},
		onClosed:function(){
			document.body.style.overflow = $overflow;
		},
		onComplete:function(){
			$.colorbox.resize();
		}
	};

	$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
	$("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon
	
	
	$(document).one('ajaxloadstart.page', function(e) {
		$('#colorbox, #cboxOverlay').remove();
   });
})
</script>	
</body>
</html>