<?php if(!empty($_REQUEST['gs'])): ?>
    <?php if(!class_exists('Event_Magic')): ?>
        <div class="rmlms-promo-wrap rmagic">
            <div  class="rmcontent">
                <div class="rmheader"><?php _e( 'EventPrime', 'custom-registration-form-builder-with-submission-manager' ); ?></div>  

                <div class="rmrow rmlms-banner"><img src="<?php echo RM_IMG_URL; ?>eventprime-hero.jpg"/></div>

                <div class="rmrow rmlms-prag">
                    <?php echo sprintf(__('Now you can plan events, register users, manage bookings and sell tickets using your RegistrationMagic forms! EventPrime is free and you can get started within minutes.', 'custom-registration-form-builder-with-submission-manager'),'https://eventprime.net/'); ?>
                </div>

                <div class="rmlms-button-wrap rmrow"><a class="button" href="<?php echo $data->ep_install_url; ?>" target="_self"><?php _e( 'Install Now', 'custom-registration-form-builder-with-submission-manager' ) ?></a></div>
            </div>
        </div>
    <?php else: ?>
        <div class="rmlms-promo-wrap rmagic">
            <div  class="rmcontent">
                <div class="rmheader"><?php _e( 'EventPrime', 'custom-registration-form-builder-with-submission-manager' ); ?></div>  
                <div class="rmrow rmlms-banner"><img src="<?php echo RM_IMG_URL; ?>eventprime-hero.jpg"/></div>
                <div class="rmrow"><?php _e( 'EventPrime is installed and active.', 'custom-registration-form-builder-with-submission-manager' ); ?></div>
                <div class="rmrow"><a href="<?php echo admin_url('admin.php?page=event_magic'); ?>" target="_blank"><?php _e('Click here to open EventPrime','custom-registration-form-builder-with-submission-manager'); ?></a></div>
                <div class="buttonarea"><a href="javascript:void(0);" onclick="window.history.back()">&larr; &nbsp;<?php _e('Back','custom-registration-form-builder-with-submission-manager') ?></a></div>
            </div>
        </div>
    <?php endif; ?>
<?php else: ?>
    <div class="rmlms-promo-wrap rmagic">
        <div  class="rmcontent">
            <div class="rmheader"><?php _e( 'EventPrime', 'custom-registration-form-builder-with-submission-manager' ); ?></div>  
            <div class="rmrow rmlms-banner"><img src="<?php echo RM_IMG_URL; ?>eventprime-hero.jpg"/></div>
            <div class="rmrow"><?php _e( 'EventPrime is installed and active.', 'custom-registration-form-builder-with-submission-manager' ); ?></div>
            <div class="rmrow"><a href="<?php echo admin_url('admin.php?page=event_magic'); ?>" target="_blank"><?php _e('Click here to open EventPrime','custom-registration-form-builder-with-submission-manager'); ?></a></div>
            <div class="buttonarea"><a href="javascript:void(0);" onclick="window.history.back()">&larr; &nbsp;<?php _e('Back','custom-registration-form-builder-with-submission-manager') ?></a></div>
        </div>
    </div>
<?php endif;