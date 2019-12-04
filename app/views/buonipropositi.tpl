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

        @media(max-width: 576px){
            body{
                overflow: visible;
                height: auto;
                width: 100%;
            }
            .container_text .section_top{
                position: relative!important;
            }
            .container_text .section_bottom{
                position: relative!important;
            }
            .container_text{
                height: auto!important;
                position: relative!important;
            }
            .container_text .section_top .title{
                font-size: 35px!important;
            }
            .border_left{
                width: 14%!important;
            }
            .border_left img{
                width: 20px!important;
            }
            .div_proposito p{
                left: 16%!important;
                top: 10%!important;
                line-height: 20px!important;
                text-align: left!important;
            }
            .background{
                height: auto!important;
            }
            .motto p{
                font-size: 16px!important;
                line-height: 24px!important;
                padding: 0em 0.5em!important;
            }
            .cont_social{
                width: 60%!important;
            }

        }
        .background{
            width: 100%;
            height: 100vh;
            display: flex;
            background: linear-gradient(116.87deg, #8611E1 -23.51%, #BBDDC7 85.65%);
            align-items: center;
            justify-content: space-around;
            flex-direction: column;
            position: relative;
        }

        .container_text{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .container_text .section_top{
            text-align: center;
            padding: 1em 0em 1.5em 0em;
            width: 100%;
            position: fixed;
            top: 0;
        }

        .container_text .section_top .title{
            font-family: 'Passion One';
            font-style: normal;
            font-weight: 700;
            font-size: 42px;
            line-height: 46px;
            color: #FFFFFF;
            text-transform: uppercase;
            padding: 0;
        }

        .container_text .section_bottom{
            width: 100%;
            background: rgba(255, 255, 255, 0.7);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding-top: 1.5em;
            position: fixed;
            bottom: 0;
        }

        .btn{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: bold;
            font-size: 12px;
            line-height: 15px;
            color: #FF006B;
            display: flex;
            align-items: center;
            justify-content: space-between;
            text-transform: uppercase;
            position: relative;
            overflow: hidden;
            z-index: 2;
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

        .btn div{
            margin-left: 2em;
        }

        .btn span{
            width: 20px;
            height: 4px;
            background-color: #FF006B;
            display: block;
            border-radius: 6px;
            position: relative;
            z-index: 2;
            transition: 0.5s ease-in-out;
        }

        .btn span:before{
            content: "";
            display: block;
            width: 16px;
            height: 4px;
            background-color: #FF006B;
            transform: rotate(45deg) translate(4px,-10px);
            border-radius: 6px;
            position: absolute;
            left: 0%;
            transition: 0.5s ease-in-out;
        }

        .btn span:after{
            content: "";
            display: block;
            width: 16px;
            height: 4px;
            background-color: #FF006B;
            transform: rotate(-45deg) translate(4px,10px);
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
            padding: 1em 0em;
        }

        .section_center{
            width: 100%;
        }

        .div_proposito{
            background: linear-gradient(90deg, rgba(255, 255, 255, 0.4) 9.55%, rgba(255, 255, 255, 0) 100.92%);
            border-radius: 70px;
            width: 100%; 
            height: 50px;
            margin: 1em 0em;
            position: relative;
        }

        .div_proposito p{
            position: absolute;
            left: 12%;
            top: 25%;
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: normal;
            font-size: 14px;
            line-height: 24px;
            text-align: center;
            color: #3B2645;
        }

        .border_left{
            display: block;
            background: #3B2645;
            box-shadow: -2px 0px 4px rgba(0, 0, 0, 0.25);
            border-radius: 70px 0px 0px 70px;
            width: 10%;
            height: 100%;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #3B2645;
        }

        .border_left img{
            width: 25px;
        }

        .title{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: bold;
            font-size: 12px;
            line-height: 13px;
            text-align: center;
            text-transform: uppercase;
            color: #3B2645;
            padding-bottom: 1em;
            display: block;
        }

        .title2{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: bold;
            font-size: 13px;
            line-height: 13px;
            text-align: center;
            text-transform: uppercase;
            color: #3B2645;
            padding-bottom: 0.5em;
            display: block;
        }

        .motto{
            background: rgba(255, 255, 255, 0.24);
            border-radius: 120px;
            padding: 25px;
        }

        .motto p{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: normal;
            font-size: 22px;
            line-height: 32px;
            text-align: center;
            color: #3B2645;
            padding: 0em 1em;
            margin: 0;
        }

        .motto p b{
            font-weight: 600;
        }

        .share_text{
            font-family: 'Montserrat';
            font-style: normal;
            font-weight: 400;
            font-size: 11px;
            line-height: 13px;
            text-align: center;
            color: #3B2645;
            text-transform: uppercase;
            margin-top: 2em;
            margin-bottom: 1em;
            display: block;
        }

        .cont_social{
            width: 26%; 
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .cont_social a{
            display: flex;
            flex: 1 0 auto;
            align-items: center;
            justify-content: center;
        }

        
    </style>
    <body>
        <section class="background">
            <div class="container_text">
                <div class="section_top">
                    <h1 class="title">Buonipropositi.com</h1>
                </div>
                <div class="section_center">
                    <div class="container">
                        <div class="row" style="display: flex; align-items: center; justify-content: center; text-align: center;">
                            <div class="col-lg-9">
                                <span class="title">I buoni propositi del mio 2020 sono esattamente questi:</span>
                                <div class="div_proposito">
                                    <div class="border_left">
                                        <img src="{{ url_heart }}" />
                                    </div>
                                    <p>
                                        Smetterò di uscire con chiunque
                                    </p>
                                </div>
                                <div class="div_proposito">
                                    <div class="border_left">
                                        <img src="{{ url_sport }}" />
                                    </div>
                                    <p>
                                        Cercherò una banca con spese più basse 
                                    </p>
                                </div>
                                <div class="div_proposito">
                                    <div class="border_left">
                                        <img src="{{ url_friends }}" />
                                    </div>
                                    <p>
                                        Inviterò gli amici a cena quando non ho voglia di uscire
                                    </p>
                                </div>
                                <div class="div_proposito">
                                    <div class="border_left">
                                        <img src="{{ url_health }}" />
                                    </div>
                                    <p>
                                        Finirò la Spartan Race
                                    </p>
                                </div>
                                <div class="div_proposito">
                                    <div class="border_left">
                                        <img src="{{ url_money }}" />
                                    </div>
                                    <p>
                                        Mi comporterò meglio con i miei colleghi
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: flex; align-items: center; justify-content: center; text-align: center;">
                            <div class="col-lg-9 mt-4">
                                <span class="title2 mb-2">Il mio motto per quest'anno sarà:</span>
                                <div class="motto">
                                    <p>
                                        But I must explain to you how all this mistaken <b>idea of denouncing</b> pleasure and praising pain was born and I wil.
                                    </p>
                                </div>
                                <div style="margin-bottom: 1em; position: relative; z-index: 10; display: flex; align-items: center; justify-content: center; flex-direction: column;">
                                    <span class="share_text">Condividi il tuo motto:</span>
                                    <div class="cont_social">
                                        <a href="#">
                                            <img src="{{ social_facebook }}" />
                                        </a>
                                        <a href="#">
                                            <img src="{{ social_linkedin }}" />
                                        </a>
                                        <a href="#">
                                            <img src="{{ social_twitter }}" />
                                        </a>
                                        <a href="#">
                                            <img src="{{ social_instagram }}" />
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section_bottom">
                    <div style="width: 100%; margin-right: 5em; display: flex; align-items: center; justify-content: flex-end">
                        <a href="#" class="btn" >Genera nuovo proposito <div><span></span></div></a>
                    </div>
                    <div style="width: 100%; display: flex; align-items: flex-end; justify-content: center;">
                        <span class="copyright">Copyright ©2015-20 Lotrek S.c.r.l</span>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>