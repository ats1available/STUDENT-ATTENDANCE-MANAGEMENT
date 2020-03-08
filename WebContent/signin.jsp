 <!DOCTYPE html>                							 		      
<html lang="en">                                                        
<head>                                                                                                                                
    <meta charset="UTF-8">                                             
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">              
    <title>IIITRANCHI</title>                            
                                                                               
    <!-- Font Icon -->                                                          
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
                                                                               
    <!-- Main css -->                                                          
    <link rel="stylesheet" href="css/style.css">                               
</head> 
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>                                                                       
<body>                                                                         
    <div class="main">                                                         
                                                                               
        <section class="signup">                                               
            <!-- <img src="images/signup-bg.jpg" alt=""> -->                   
            <div class="container">                                     
                <div class="signup-content">                        
                                                                       
                    <form action="signin" method="POST" id="signup-form" class="signup-form">
                        <h2 class="form-title">LOGIN!!</h2>                  
                        <div class="form-group">                                  
                            <input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>
                        </div>                                                       
                                                                                        
                        <div class="form-group">                                        
                            <input type="text" class="form-input" name="password" id="password" placeholder="Password"/>
                            <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                        </div>                                                            
                                                                                                                              
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="LOGIN!!"/>
                        </div>                                                           
                    </form>                                                             
                                                                                           
                </div>                                                                      
            </div>                                                                        
        </section>                                                                         
                                                                                  
    </div>                                                                         
                                                                                   
    <!-- JS -->                                                                   
    <script src="vendor/jquery/jquery.min.js"></script>                                                 
     <script src="js/main.js"></script>                                                                 
</body>                                                                                                                    
</html>                                                                            