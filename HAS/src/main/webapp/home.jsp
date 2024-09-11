<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Hospital Appointment System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        .btn-custom {
            margin: 10px;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            color: #ffffff;
            transform: scale(1.05);
        }
        .btn-success:hover {
            background-color: #218838;
            color: #ffffff;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Hospital Appointment System</h1>
        <a href="/register" class="btn btn-primary btn-custom">Register</a>
        <a href="/login" class="btn btn-success btn-custom">Login</a>
        <a href="/availableDoctors" class="btn btn-info btn-custom">View Available Doctors</a>
    </div>
</body>
</html>

<!--  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HOSPITAL APPOINTMENT SYSTEM:</title>
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300..800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

*{
    margin:0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'poppins',sans-serif;
}

body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url(its-beginning-4k-wv-3840x2160.jpg) no-repeat;
    background-size: cover;
    background-position: center;

    }

header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 20px 100px;
    /* background: seagreen; */
    display: flex;
    justify-content: space-between ;
    align-items: center;
    z-index: 99;
}
.logo{
    font-size: 2em;
    color: black;
    user-select: none;
}

.navigation a{
    position: relative;
    font-size: 1.1em;
    color: black;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
}

.navigation a::after{
    content: " ";
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3px;
    background: aqua;
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform .5s;
}

.navigation a:hover::after{
    transform-origin: left;
    transform: scaleX(1);
}

.navigation .btnlogin-popup{
    width: 130px;
    height: 50px;
    background: transparent ;
    /* border: 2px solid #fff; */
    outline: none;
    border-radius: 20px;
    cursor: pointer;
    font-size: 1.1em;
    color: fff;
    font-weight: 500;
    margin-left: 40px;
    transition: .5s;
}

.navigation .btnlogin-popup:hover{
    background: gray ;
    color: black;
}

.wrapper{
    
    position: relative;
    width: 400px;
    height: 440px;
    background: transparent ;
    border-radius: 20px;
    backdrop-filter: blur(100px);
    box-shadow: 0px 0px 30px rgba(0,0,0,0.3);
    overflow: hidden;
    transform: scale(0);
    display: flex;
    justify-content: center;
    align-items: center;
    transition: transform .5s ease, height .2s ease;
}


.wrapper.active-popup{
    transform: scale(1);


}

.wrapper.active{
    height: 520px;
}

.wrapper .form-box {
    width: 100%;
    padding:40px;
}

.wrapper .form-box.login{
    transition: .18s ease;
    transform: translateX(0);
}

.wrapper.active .form-box.login{
    transition: none;
    transform: translateX(-400px);
    
}


.wrapper .form-box.register{
   position: absolute;
   transition: none;
   transform: translateX(400px);
}

.wrapper.active .form-box.register{
    transition: .18s ease;
    transform: translateX(0);
    
}


.wrapper .icon-close{
    position: absolute ;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    /* background: rgb(16, 234, 234); */
    font-size: 2em;
    color: black;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom-left-radius: 20px;
    cursor: pointer ;
    z-index: 1;
}

.wrapper .icon-close:hover{
    background: rgba(83,73,73,0.5);
    color: #fff;
    border-color: #fff;
}



.form-box h2{
    font-size: 2em;
    color: black;
    text-align: center;
}

.input-box{
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid black;
    margin: 30px 0;
}

.input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1.1em;
    color: black;
    font-weight: 500;
    pointer-events: none ;
    transition: .5s;
}

.input-box input:focus~label,
.input-box input:valid~label{
    top:-5px;
}

.input-box input {
    width: 100%;
    height: 100%;
    background: transparent ;
    border: none;
    outline: none;
    font-size: 1em;
    font-weight: 600;
    padding: 0 35px 0 5px;
}

.input-box .icon{
    position: absolute ;
    right: 8px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 20px;
    color: black;
    line-height: 57px;

}

.remember-forgot{
    font-size: .9em;
    color: black;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;
}

.remember-forgot label input{
    accent-color: black;
    margin-right: 3px;
}

.remember-forgot a{
    color: black;
    text-decoration: none;
}

.remember-forgot a:hover{
    text-decoration: underline;
}

.btn{
    width: 100%;
    height: 45px;
    background: #fff;
    border: none;
    outline: none;
    border-radius: 40px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    cursor: pointer;
    font-size: 16px;
    color: #333;
    font-weight: 600;

}

.btn:hover{
    background: rgba(83,73,73,0.5);
    color: #fff;
    border-color: #fff;
}

.login-register{
    font-size: 14.5px;
    text-align: center;
    color:black;
    font-weight: 600;
    margin: 20px 0 15px;
    
}

.login-register p a{
    color: black;
    text-decoration: none;
    font-weight: 600;
}

.login-register p a:hover{
    text-decoration: underline;
}






/* Responsive design */

@media only screen and (max-width: 780px){
    header{
        padding: 20px 50px;
}

  }
    .logo{
        font-size: 1.5em;
    }
    .navigation a{
            font-size: 1em;
            margin-left: 20px;
        }
    .navigation .btnlogin-popup{
        width: 100px;
        height: 40px;
        font-size: 1em;
        margin-left: 20px;
    }

    .wrapper{
        width: 350px;
        height: 400px;
    }
    .form-box{
        padding: 30px;
    }
    .wrapper.active .form-box.login{
        transform: translateX(-350px);
    }





@media only screen and (max-width: 480px){
    header{
        padding: 20px 20px;
        flex-direction: column;
        align-items: flex-start;
}
    .logo{
        font-size: 1.2em;
        margin-bottom: 10px;
    }
    .navigation {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
                
            }

    .navigation a{
            font-size: 0.9em;
            margin: 10px 0 ;
        }
    .navigation .btnlogin-popup{
            width: 100px;
            height: 40px;
            font-size: 1em;
            margin: 10px 0;
        }
        .wrapper{
            width: 300px;
            height: 380px;

        }
        .form-box{
            padding: 20px;
        }
        .form-box h2{
            font-size: 1.5em;
        }
        .input-box label{
            font-size: 1em;

        }
        .btn{
            height: 40px;
            font-size: 14px;
        }
        .wrapper.active .form-box.login{
            transform: translateX(-300px);
        }
}
    </style>
</head>
<body>
    <header>
        <h2 class="logo">HOSPITAL APPOINTMENT SYSTEM</h2>
        <nav class="navigation">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Services</a>
            <a href="#">Contact</a>
            <button class="btnlogin-popup">Login</button>
        </nav>
    </header>

    <div class="wrapper">
        <span class="icon-close">
            <ion-icon name="close-outline"></ion-icon>
        </span>
        
        <div class="form-box login">
            <h2>Login</h2>
            <form action="#">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail-outline"></ion-icon>
                    </span>
                    <input type="email" required>
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                    </span>
                    <input type="password" required>
                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox"> Remember me</label>
                    <a href="#">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Log in</button>
                <div class="login-register">
                    <p>Don't Have an account? <a href="#" class="register-link">Register</a></p>
                </div>
            </form>
        </div> 

        <div class="form-box register">
            <h2>Registration</h2>
            <form action="#">
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="person-circle-outline"></ion-icon>
                    </span>
                    <input type="text" required>
                    <label>name</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail-outline"></ion-icon>
                    </span>
                    <input type="email" required>
                    <label>Email</label>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed-outline"></ion-icon>
                    </span>
                    <input type="password" required>
                    <label>Password</label>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox"> I agree to the terms & conditions</label>
                </div>
                <button type="submit" class="btn">Sign Up</button>
                <div class="login-register">
                    <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                </div>
            </form>
        </div> 
    </div>

    <script>const wrapper = document.querySelector('.wrapper');
    const loginLink = document.querySelector('.login-link');
    const registerLink = document.querySelector('.register-link');
    const btnPopup = document.querySelector('.btnlogin-popup');
    const iconClose = document.querySelector('.icon-close');
    registerLink.addEventListener('click',() => {
        wrapper.classList.add('active');
    });

    loginLink.addEventListener('click',() => {
        wrapper.classList.remove('active');
    });

    btnPopup.addEventListener('click',() => {
        wrapper.classList.add('active-popup');
    });
    iconClose.addEventListener('click',() => {
        wrapper.classList.remove('active-popup');
    });</script>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>
-->