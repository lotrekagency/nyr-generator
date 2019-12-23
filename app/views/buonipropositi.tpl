<html>
    
    % include('head.tpl')
    
    <body>
        % include('tagmanager.tpl')
        <section class="buonipropositi">
            <div class="buonipropositi__container">
                <div class="buonipropositi__container--section_top">
                    <h1 class="buonipropositi__title">Generatore automatico di buoni propositi</h1>
                </div>
                <div class="buonipropositi__container--section_center">
                    <div class="container">
                        <div class="row" style="display: flex; align-items: center; justify-content: center; text-align: center;">
                            <div class="col-lg-9">
                                <span class="buonipropositi__subtitle">I buoni propositi del mio 2020 sono esattamente questi:</span>
                                <div class="buonipropositi__proposito">
                                    <div class="buonipropositi__border_left">
                                        <img src="/static/images/heart.png" />
                                    </div>
                                    <p class="buonipropositi__proposito--paragraph" id="heart">
                                        {{resolutions['Amore']}}
                                    </p>
                                </div>
                                <div class="buonipropositi__proposito">
                                    <div class="buonipropositi__border_left">
                                        <img src="/static/images/sport.png" />
                                    </div>
                                    <p class="buonipropositi__proposito--paragraph" id="sport">
                                        {{resolutions['Sport']}}
                                    </p>
                                </div>
                                <div class="buonipropositi__proposito">
                                    <div class="buonipropositi__border_left">
                                        <img src="/static/images/friends.png" />
                                    </div>
                                    <p class="buonipropositi__proposito--paragraph" id="friends">
                                        {{resolutions['Amici']}}
                                    </p>
                                </div>
                                <div class="buonipropositi__proposito">
                                    <div class="buonipropositi__border_left">
                                        <img src="/static/images/health.png" />
                                    </div>
                                    <p class="buonipropositi__proposito--paragraph" id="health">
                                        {{resolutions['Salute']}}
                                    </p>
                                </div>
                                <div class="buonipropositi__proposito">
                                    <div class="buonipropositi__border_left">
                                        <img src="/static/images/money.png" />
                                    </div>
                                    <p class="buonipropositi__proposito--paragraph" id="soldi">
                                        {{resolutions['Soldi']}}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="display: flex; align-items: center; justify-content: center; text-align: center;">
                            <div class="col-lg-9 mt-4">
                                <span class="buonipropositi__title_motto mb-2">Il mio motto per quest'anno sarà:</span>
                                <div class="buonipropositi__motto">
                                    <p class="buonipropositi__motto--paragraph" id="motto">
                                        {{resolutions['Motto']}}
                                    </p>
                                </div>
                                <div class="buonipropositi__share">
                                    <span class="buonipropositi__share_text">Fallo girare!</span>
                                    <div class="buonipropositi__cont_social">
                                        <div class="buonipropositi__cont_social--col6">
                                            <a class="buonipropositi__cont_social--facebook" href="https://www.facebook.com/sharer.php?u={{ currentUrl }}" target="_blank" ><img src="/static/images/facebook.png" />Condividi con i tuoi amici!</a>
                                        </div>
                                        <div class="buonipropositi__cont_social--col6">
                                            <a class="buonipropositi__cont_social--whatsapp" href="https://api.whatsapp.com/send?phone=&text={{ currentUrl }}" target="_blank" ><img src="/static/images/whatsapp.png" />Condividi con i tuoi amici!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="buonipropositi__container--section_bottom">
                        <div class="buonipropositi__new">
                            <a href="#" class="buonipropositi__btn" onclick="callAjax()">Genera nuovo proposito <div><span></span></div></a>
                        </div>
                        <a href="#" class="home__copyright" id="credits">A proposito dei buoni propositi...</a>
                </div>
            </div>
        </section>
        % include('popup.tpl')
        % include('popupsharer.tpl')
    </body>

    % include('footer.tpl')
    
</html>
