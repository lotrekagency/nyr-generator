<html>
    <head>
        <meta charset="utf-8">
        <title>{{ title }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <style>

        @import url('https://fonts.googleapis.com/css?family=Passion+One:400,700&display=swap');
        @import url('https://fonts.googleapis.com/css?family=Montserrat:500,600&display=swap');

        html, body {
            width: 100%;
            height: 100%;
        }

        body {
            margin: 0;
            overflow: hidden;
        }

        .page{
            width: 100%;
            height: 100vh;
            display: flex;
            background: linear-gradient(116.87deg, #8611E1 -23.51%, #BBDDC7 85.65%);
            align-items: center;
            justify-content: space-around;
            flex-direction: column;
            position: relative;
        }

        .gradient_top{
            background: linear-gradient(0.37deg, rgba(255, 255, 255, 0.4) 71.55%, rgba(255, 255, 255, 0) 99.11%);
            height: 65%;
            width: 100%;
        }

        .gradient_bottom{
            background: rgba(255, 255, 255, 0.7);
            height: 35%;
            width: 100%;
        }

        .container_bg-people{
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: absolute;
            top: 0;
            left: 0;
        }

        .container_bg-people .background_people{
            width: 100%;
            height: 100%;
            background-image: url("{{ url_people }}");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
        }

        .container_text{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-direction: column;
        }

        .container_text .section_top{
            text-align: center;
            padding: 2.5em 0em;
            width: 100%;
        }

        .container_text .section_top .title{
            font-family: 'Passion One';
            font-style: normal;
            font-weight: 700;
            font-size: 42px;
            line-height: 46px;
            color: #FFFFFF;
            text-transform: uppercase;
        }

        .container_text .section_bottom{
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
            width: 100%;
        }

        .container_text .description{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 500;
            font-size: 20px;
            line-height: 24px;
            text-align: center;
            color: #4E0292;
            padding-bottom: 1.5em;
        }

        .container_text .description b{
            font-weight: 700;
        }

        .btn{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 600;
            font-size: 20px;
            line-height: 24px;
            color: #FFFFFF;
            background-color: #FF006B;
            border-radius: 85px;
            box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.15);
            padding: 0.8em 2em;
            display: flex;
            align-items: center;
            justify-content: space-between;
            text-transform: uppercase;
            position: relative;
            overflow: hidden;
            z-index: 2;
            transition: 0.5s ease-in-out;
        }

        .btn:hover{
            color: #FF006B;
        }

        .btn:hover span{
            background-color: #FF006B;
            transition: 0.5s ease-in-out;
        }

        .btn:hover span:before{
            background-color: #FF006B;
            transition: 0.5s ease-in-out;
        }

        .btn:hover span:after{
            background-color: #FF006B;
            transition: 0.5s ease-in-out;
        }

        .btn:after{
            background: #fff;
            content: '';
            position: absolute;
            height: 100%;
            left: 0;
            top: 0;
            width: 0;
            transition: 0.5s ease-in-out;
            border-radius: 85px;
            background-color: #fff;
            z-index: -1;
        }

        .btn:hover:after{
            width: 100%;
            transition: 0.5s ease-in-out;
        }

        .btn div{
            margin-left: 1em;
        }

        .btn span{
            width: 30px;
            height: 5px;
            background-color: #fff;
            display: block;
            border-radius: 6px;
            position: relative;
            z-index: 2;
            transition: 0.5s ease-in-out;
        }

        .btn span:before{
            content: "";
            display: block;
            width: 20px;
            height: 5px;
            background-color: #fff;
            transform: rotate(45deg) translate(6px,-14px);
            border-radius: 6px;
            position: absolute;
            left: 0%;
            transition: 0.5s ease-in-out;
        }

        .btn span:after{
            content: "";
            display: block;
            width: 20px;
            height: 5px;
            background-color: #fff;
            transform: rotate(-45deg) translate(6px,14px);
            border-radius: 6px;
            position: absolute;
            left: 0%;
            transition: 0.5s ease-in-out;
        }

        .copyright{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 600;
            font-size: 12px;
            line-height: 12px;
            color: #626262;
            display: block;
            padding-top: 3em;
            padding-bottom: 1em;
        }

    </style>
    <body>

        <div class="page">
            <div class="gradient_top" ></div>
            <div class="gradient_bottom"></div>
            <div class="container_bg-people">
                <div id="bg_people" class="background_people"></div>
            </div>
            <div class="container_text">
                <div class="section_top">
                    <h1 class="title">Buonipropositi.com</h1>
                </div>
                <div class="section_bottom">
                    <p class="description">But I must explain <b>to you how all this mistaken</b> idea of denouncing.</p>
                    <a href="#" class="btn">Scopri un buon proposito <div><span></span></div></a>
                    <span class="copyright">Copyright ©2015-20 Lotrek S.c.r.l</span>
                </div>
            </div>
        </div>
    </body>

    <script>

    function move(e){
        var moveX, moveY;
        moveX = e.pageX * -1 / 100 + 'px';
        moveY = e.pageY * -1 / 100 + 'px';
        var bgPeople = document.getElementById("bg_people");
        bgPeople.style.backgroundPosition = "calc(50% + " + moveX + ") calc(50% + " + moveY + ")";
    }

    document.addEventListener("DOMContentLoaded", function() {
        window.addEventListener('resize', move);
        window.addEventListener('mousemove', move);
    });

    </script>
</html>