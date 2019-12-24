<html>
    
    % include('head404.tpl')

    <body>
        <div class="error">
            <div class="error__gradient_top"></div>
            <div class="error__gradient_bottom"></div>
            <div class="error__container_text">
                <div style="height: 50%;">
                    <div class="error__container_text--section_top">
                        <h1 class="error__title">Buonipropositi.com</h1>
                    </div>
                    <div class="error__container_text--section-error">
                        <span class="error__title_not_found">Pagina non trovato</span>
                        <span class="error__number">404</span>
                    </div>
                    <div class="error__container_text--section_bottom">
                        <p class="error__description">È tempo di pensare ai <b>buoni propositi per il 2020</b>. Risparmiati la fatica e fatteli dare da noi, freschi e completamente a caso.</p>
                        <a href="#" class="error__btn" onclick="callAjax()">Scopri un buon proposito<div class="arrow"><span></span></div></a>
                    </div>
                </div>
                <div style="z-index: 2">
                    % include('popup.tpl')
                </div>
            </div>
            <div class="error__people">
                <div id="bg_people" class="error__people__bg_people" style="background-image: url('/static/images//group_people.png')"></div>
            </div>
        </div>
    </body>

    % include('footer.tpl')

</html>
