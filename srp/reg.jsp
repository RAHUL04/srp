<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Al3xis</title>
        
        <!-- The stylesheet -->
        <link rel="stylesheet" href="styles.css" />
        
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    
    <body>
	<%  
StringBuffer sb=new StringBuffer();  
for(int i=1;i<=5;i++)  
{  
    sb.append((char)(int)(Math.random()*79+23+7));  
}  
String cap=new String(sb);  
%> 

        <div id="main">
        	
        	<h1>Sign up, it's FREE!</h1>
        	
        	<form class="" method="post" action="">
        		
        		<div class="row email">
	    			<input type="text" id="email" name="email" placeholder="Email" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password1" name="password1" placeholder="Password" />
        		</div>
        		
        		<div class="row pass">
        			<input type="password" id="password2" name="password2" placeholder="Password (repeat)" disabled="true" />
        		</div>
        		
        		<!-- The rotating arrow -->
        		<div class="arrowCap"></div>
        		<div class="arrow"></div>
        		
        		<p class="meterText">Password Meter</p>
			<input type="text" name="cap1" value="" />
        <input type="hidden" name="cap2" value='<%=cap%>' readonly="readonly" >
      
        		
        		<input type="submit" value="Register" />
        		
        	</form>
        </div>
        
        <footer>
	        
            <a class="al3xis"> a form with password meter and pass validation </a>
        </footer>
        
        <!-- JavaScript includes - jQuery, the complexify plugin and our own script.js -->
		<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>

		     
    </body>
</html>