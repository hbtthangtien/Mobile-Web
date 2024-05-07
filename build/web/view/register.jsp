<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Hongo(Mobile)</title>
        <link rel="stylesheet" href="css/responsive.css" />
        <link rel="stylesheet" href="css/index.css" />
        <link rel="stylesheet" href="css/products.css" />
        <link rel="stylesheet" href="css/header.css" />
        <link rel="stylesheet" href="css/search.css" />
        <link rel="stylesheet" href="css/validateform.css" />
        <link rel="stylesheet" href="css/slide_show.css" />
        <link rel="stylesheet" href="css/footer.css" />
        <script
            src="https://kit.fontawesome.com/459a7e2db3.js"
            crossorigin="anonymous"
        ></script>
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
            />
        <link
            rel="shortcut icon"
            href="img/favicon/favicon-16x16.png"
            type="image/png"
            />
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }
        body{
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .container{
            max-width: 700px;
            width: 100%;
            background-color: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.15);
        }
        .container .title{
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }
        .container .title::before{
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .content form .user-details{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }
        form .user-details .input-box{
            margin-bottom: 15px;
            width: calc(100% / 2 - 20px);
        }
        form .input-box span.details{
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }
        .user-details .input-box input{
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }
        .user-details .input-box input:focus,
        .user-details .input-box input:valid{
            border-color: #9b59b6;
        }
        form .gender-details .gender-title{
            font-size: 20px;
            font-weight: 500;
        }

        form .category{
            display: flex;
            width: 80%;
            margin: 14px 0 ;
            justify-content: space-between;
        }
        form .category label{
            display: flex;
            align-items: center;
            cursor: pointer;
        }
        form .category label .dot{
            height: 18px;
            width: 18px;
            border-radius: 50%;
            margin-right: 10px;
            background: #d9d9d9;
            border: 5px solid transparent;
            transition: all 0.3s ease;
        }
        #dot-1:checked ~ .category label .one,
        #dot-2:checked ~ .category label .two,
        #dot-3:checked ~ .category label .three,
        #buyer:checked ~ .category label .one,
        #seller:checked ~ .category label .two
        
        {
            background: #9b59b6;
            border-color: #d9d9d9;
        }
        #buyer:checked ~ .category label .buyer,
        #seller:checked ~ .category label .seller{
            background: #9b59b6;
            border-color: #d9d9d9;
        }
        form input[type="radio"]{
            display: none;
        }
        form .button{
            height: 45px;
            margin: 35px 0
        }
        form .button input{
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        form .button input:hover{
            /* transform: scale(0.99); */
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
        @media(max-width: 584px){
            .container{
                max-width: 100%;
            }
            form .user-details .input-box{
                margin-bottom: 15px;
                width: 100%;
            }
            form .category{
                width: 100%;
            }
            .content form .user-details{
                max-height: 300px;
                overflow-y: scroll;
            }
            .user-details::-webkit-scrollbar{
                width: 5px;
            }
        }
        @media(max-width: 459px){
            .container .content .category{
                flex-direction: column;
            }
        }
    </style>
    <body>
        <div class="container">
            <div class="title">Registration</div>
            <div class="content">
                <form action="register" method="post" autocomplete="off">
                    <div class="user-details" style="width: 100%">
                        <div class="input-box">
                            <span class="details">Full name</span>
                            <input type="text" name="fullname" placeholder="First name" class="name" required>
                        </div>
                        
                        <div class="input-box">
                            <span class="details">Username</span>
                            <input type="text" name="username" placeholder="Username" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Email</span>
                            <input type="text" name="email" placeholder="Email" required autocomplete="off">
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input type="password" name="password" placeholder="New password" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Address</span>
                            <input type="text" name="address" placeholder="New address" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone number</span>
                            <input type="text" name="phoneNumber" placeholder="New phonenumber" required>
                        </div>
                    </div>
                    <div class="button">
                        <input type="submit" value="Register">
                        <a href="login" style="color: #495057;
                           text-decoration: underline;">
                            Already have a account?
                        </a>
                    </div>
                    <p style="color: red">${noitce}</p>
                </form>
            </div>
        </div>

    </body>
</html>
