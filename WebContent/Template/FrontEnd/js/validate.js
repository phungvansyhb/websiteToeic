function validate(){
				var fullname = document.form.fullname.value
				var username = document.form.username.value;
				var userpass= document.form.password.value;
				var repeatpass =  document.form.repeatpass.value;
				if(fullname==""){
					document.getElementById("msg1").innerHTML="*Must Write!";
					return false;
					
				}else if(/[0-9]/.test(fullname)){
					document.getElementById("msg1").innerHTML="Invalid name!";	
					return false;
				}else{
					document.getElementById("msg1").innerHTML="";
				}
				if(username==""){
					document.getElementById("msg2").innerHTML="*Must Write!";
					return false;
				}else{
					document.getElementById("msg2").innerHTML="";
					if(username.length<6)
						{document.getElementById("msg2").innerHTML="*Username must has least 6 character";
						return false;}
				}
				if(userpass==""){
					console.log(userpass);
					document.getElementById("msg3").innerHTML="*Must Write!";
					return false;
				}else{
					document.getElementById("msg3").innerHTML="";
					if(userpass.length<3)
						{document.getElementById("msg3").innerHTML="*Userpass must has least 3 character";
						return false;
						}
				}
				if(repeatpass != userpass){
					document.getElementById("msg4").innerHTML="*You type difference pass!";
					return false;
				}else{
					document.getElementById("msg4").innerHTML="";
				}
				
			}
			