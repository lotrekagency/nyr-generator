<html>
    
    % include('head.tpl')
    % include('meta.tpl')
    
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
                                    <span class="buonipropositi__share_text">Condividi il tuo motto:</span>
                                    <div class="buonipropositi__cont_social">
                                        <a class="buonipropositi__cont_social--link" href="https://www.facebook.com/sharer.php?u={{ currentUrl }}" target="_blank">
                                            <img src="/static/images/facebook.png" />
                                        </a>
                                        <a class="buonipropositi__cont_social--link" href="https://www.linkedin.com/shareArticle?mini=true&url={{ currentUrl }}&title={{ shareTitle }}&summary={{ resolutions['Motto'] }}&source=LinkedIn" target="_blank">
                                            <img src="/static/images/linkedin.png" />
                                        </a>
                                        <a class="buonipropositi__cont_social--link" href="https://twitter.com/intent/tweet?text={{ resolutions['Motto'] }}&hashtags=buonipropositi2020&url={{ currentUrl }}&original_referer=" target="_blank">
                                            <img src="/static/images/twitter.png" />
                                        </a>
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
    </body>

    % include('footer.tpl')
    
</html>
