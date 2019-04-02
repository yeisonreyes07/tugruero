/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function rmInitCaptcha(){
    $= jQuery;
    $('.g-recaptcha').each(function(index, el) {
        grecaptcha.render(el, {'sitekey' : rm_captcha_site_key});
    });
    
    grecaptcha.execute(rm_captcha_site_key,{action: 'homepage'}).then(function(token) {
        /*$('.rm_captcha_fieldrow').each(function(){
            $(this).find('.g-recaptcha-response').val(token);
        });*/
        $('.g-recaptcha-response').val(token);
    });
}


