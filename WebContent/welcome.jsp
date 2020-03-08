<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                <%
                response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
                if(session.getAttribute("name")==null)
                {
         			response.sendRedirect("index.jsp");
                } %>
                <h1>HI
                <% 
                if(session.getAttribute("name")!=null){String str=session.getAttribute("name").toString();
                out.print(str.toUpperCase());}
                %>
                YOU ARE SUCCESSFULLY REGISTERED !!!</h1>
                    <form action="signin.jsp" method="POST" id="signup-form" class="signup-form">
                        
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="login"/>
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