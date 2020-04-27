;
jQuery(document).ready(function() {
    
    var wpobp_template =   '<div class="wpob-popover popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>' ; 
    
    jQuery('[data-toggle=\"wpob-popover\"]').popover({ 
        track: true, 
         template: wpobp_template
    }) ; 
});