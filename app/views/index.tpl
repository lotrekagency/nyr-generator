<html>
    
    % include('head.tpl')
    % include('meta_index.tpl')

    <body>
        <div class="home">
            <div class="home__gradient_top"></div>
            <div class="home__gradient_bottom"></div>
            <div class="home__people">
                <div id="bg_people" class="home__people__bg_people" style="background-image: url('/static/images//group_people.png')"></div>
            </div>
            <div class="home__container_text">
                <div class="home__container_text--section_top">
                    <h1 class="home__title">Generatore automatico di buoni propositi</h1>
                </div>
                <div class="home__container_text--section_bottom">
                    <p class="home__description">È tempo di pensare ai <b>buoni propositi per il 2020</b>. Risparmiati la fatica e fatteli dare da noi, freschi e completamente a caso.</p>
                    <a href="#" class="home__btn" onclick="callAjax()">{{ cta_random }}<div class="arrow"><span></span></div></a>
                        <a href="#" class="home__copyright" id="credits">A proposito dei buoni propositi...</a>
                        % include('popup.tpl')
                </div>
            </div>
        </div>
    </body>

    % include('footer.tpl')

</html>
