<%--
  Created by IntelliJ IDEA.
  User: 曾子懿
  Date: 2022/6/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/Login.css">
</head>

<body>
<div class="container">
    <div class="form row" style="margin-top: 240px;">

            <h3 class="form-title" style="margin-left: 160px; font-family: times; font-weight: bold; font-size:30px;">register</h3><br><br>
            <div class="col-sm-9 col-md-9" style="margin-left: 40px;">
                <p style="font-family: Times; font-size: 18px;margin-left: 5px;">Email validation</p>
            <%
                String id = null;
                HttpSession session1 = (HttpSession) request.getSession();
                id = (String) session1.getAttribute("id");
                session.removeAttribute("id");
                if(id != "1"){
                    //  发送了code之前
            %>
                <form onsubmit="return validate();" class="form-group" action="${pageContext.request.contextPath}/emailCode" method="post" style="margin-left: 15px;margin-bottom: 20px;">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <p style="margin-left: 0px;color: #0f5132; font-size: 16px;" >
                        <input class="form-control " type="email" name="email" id="email" placeholder="email address" required style="width:  240px; " onblur="validate_email(this.value)">
                        <span id = "test_email" style="float: right;"></span>
                        <button type="submit" value="register" class="btn btn-success pull-right" style="margin-left: 120px;margin-top: 20px;">Send the code</button>

                </form>
                <%
                }else{
                    //发送code之后
                %>
                <input class="form-control " type="text" name="emailCode" id="emailCode" placeholder="Code" required style="width:  100px; margin-top: 15px;">
                <div style="margin-top: 10px;">
                    <a href="register-email.jsp" style="font-size: 12px;">refill the email</a>
                </div>
                <a type="submit" href="register.jsp" value="register" class="btn btn-success pull-right" style="margin-left: 120px;margin-top: 20px;">Submit</a>

                <%
                }
                %>

                <br>

                <div class="form-group smallText">
                    <br><br>
                    <a href="workouts.jsp" class="text-sm text-muted" style="float: right;">
                        <small>back</small>
                    </a>

                </div><br>
            </div>

    </div>
</div>

<script type="text/javascript">
    ////validate when user leave the email input box
    function validate_email(email){
        var emailReg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if(email !="" && email.search(emailReg) != -1)
        {
            document.getElementById("test_email").innerHTML = "<p style=\"color:green;\" size='3px'>√ correct</p>";
        }else{
            document.getElementById("test_email").innerHTML = "<span style=\"color:red;\" size='3px'>Invaild email</span>";
        }
    }

    //validate when submit
    function validate(){
        //get those value
        let company =document.getElementById("company").value;
        let countryCode= document.getElementById("countryCode").value;
        let phone = document.getElementById("phone").value;
        let email =document.getElementById("email").value;
        let message =document.getElementById("message").value;

        let error_message =document.getElementById("error_message");
        //use Regular Expression to check email address
        var emailReg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        //message's style
        error_message.style.padding = "10px";
        error_message.style.color = "#FF0000";

        let text;
        //validate
        if (!emailReg.test(email)){
            text="Please enter valid email";
            error_message.innerHTML = text;
            return false;
        }
        //submit information
        alert ("The code is sending to your email!");
        return true;
    }
</script>

</body>

</html>
