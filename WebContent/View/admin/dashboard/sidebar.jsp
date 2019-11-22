<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
					try{ace.settings.loadState('main-container')}catch(e){}
		</script>
		<div id="sidebar" class="sidebar   responsive    ace-save-state">
			<script type="text/javascript">
						try{ace.settings.loadState('sidebar')}catch(e){}
			</script>
			<ul class="nav nav-list">
				<li class="">
					<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Quản lý ngữ pháp
							</span>							
					</a>							
				</li>			
					
				<li class="">
					<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Menu 
							</span>
							<b class="arrow fa fa-angle-down"></b>
					</a>	
					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="GrammarController" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
									 Thêm Grammar section								
							</a>
								<b class="arrow"></b>
						</li>
					</ul>						
				</li>				
				
				<li class="">
					<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Quản lý đọc
							</span>
							<b class="arrow fa fa-angle-down"></b>
					</a>	
					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
									 Thêm
									
								</a>
								<b class="arrow"></b>
						</li>
					</ul>						
				</li>	
				
				<li class="">
					<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								Quản lý thi
							</span>
							<b class="arrow fa fa-angle-down"></b>
					</a>	
					<b class="arrow"></b>
					<ul class="submenu">
						<li class="">
							<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
									 Thêm
									
								</a>
								<b class="arrow"></b>
						</li>
					</ul>						
				</li>							

				
			</ul><!-- /.nav-list -->
			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div><!-- End side bar -->
	
</body>
</html>