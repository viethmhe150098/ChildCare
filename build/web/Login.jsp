<%-- 
    Document   : Login.jsp
    Created on : Sep 22, 2021, 2:50:02 PM
    Author     : DO THANH TRUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <style>
        .contain {
            height: 100vh;
            width: 100vw;
            background-image: url("images/backgroundlogin.jpg"), linear-gradient(rgba(255, 255, 255, 0.5),
                    rgba(255, 255, 255, 0.5));

            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .wrapper {
            padding: 25px;
            width: 40%;
            background-color: rgba(255, 255, 255, 0.8);

        }

        form {
            display: flex;
            flex-direction: column;
        }

        h1 {
            font-size: 24px;
            font-weight: 300;
            text-align: center;
        }

        input {
            flex: 1;
            min-width: 40%;
            margin: 10px 0px;
            padding: 10px;
        }

        button {
            width: 100%;
            border: none;
            padding: 15px 20px;
            background-color: teal;
            color: white;
            cursor: pointer;
            font-weight: 700;
            margin-bottom: 10px;
        }

        a {
            margin: 5px 0px;
            font-size: 12px;
            text-decoration: underline;
            cursor: pointer;
        }
    </style>
    <title>Document</title>
</head>

<body>
    <div class="contain">
        <div class="wrapper">
            <form>
                <h1>SIGN IN</h1>
                <input placeholder="USERNAME" type="text" />
                <input placeholder="PASSWORD" type="password" />
                <button>LOGIN</button>
                <a>DO NOT YOU REMEMBER THE PASSWORD?</a>
                <a>CREATE A NEW ACCOUNT</a>
            </form>
        </div>
    </div>
</body>

</html>