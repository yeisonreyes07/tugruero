=== YITH WooCommerce Uploads Premium ===

Contributors: yithemes
Tags: woocommerce, e-commerce, ecommerce, shop, file upload, attach file, append file, customize order.
Requires at least: 4.0
Tested up to: 5.2.x
Stable tag: 1.2.10
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
Documentation: https://docs.yithemes.com/yith-woocommerce-uploads/

It lets your customers attach and upload a file to their order. You can also set limits to file size and extension to avoid wrong uploads.

== Description ==

A concrete way to customize your orders: upload a file with your image and complete your order, or attach the PDF copy of your ID card which is required to purchase that specific item. YITH WooCommerce Uploads allows both your customers to  add something personal to their purchase and you to help them not forget essential documents needed to complete their order. Attach a file is an essential feature that can make you save a lot of time when dealing with customers via email about details of the order.

= Version 1.2.10 - Released: May 29, 2019 =

* New: Show link email for upload on orders
* Tweak: Added a load animation when the file is uploaded
* Tweak: Deleted all commented code
* Update: Plugin-fw
* Dev: Action ywau_after_order_upload_link

= Version 1.2.9 - Released: Apr 11, 2019 =

* Fix: fixed an issue with missed files on the orders

= Version 1.2.8 - Released: Apr 09, 2019 =

* New: support to WooCommerce 3.6.0 RC 1
* Update: updated plugin FW
* Update: Spanish translation
* Update: Dutch translation
* Dev: check if files exist to rename the files

= Version 1.2.7 - Released: Feb 19, 2019 =

* Update: updated plugin FW
* Update: updated Dutch language
* Update: updated Italian language

= Version 1.2.6 - Released: Dec 13, 2018 =

* Update: updating plugin FW
* Fix: fixing a possible issue with a new filter

= Version 1.2.5 - Released: Dec 07, 2018 =

* New: support to WordPress 5.0
* Update: plugin core to version 3.1.6
* Update: Italian language
* Dev: new filter 'ywau_src_pretty_photo_script'

= Version 1.2.4 - Released: Oct 23, 2018 =

* Update: plugin framework
* Update: plugin description
* Update: plugin links

= Version 1.2.3 - Released: Oct 17, 2018 =

* New: Support to WooCommerce 3.5.0
* New: added a new option to enable the variation uploads by default
* New: Two options to automatically accept the the upload file or the order or upload file of the product on the order created
* Tweak: new action links and plugin row meta in admin manage plugins page
* Update: Dutch language
* Update: Spanish language
* Update: updated the official documentation url of the plugin
* Update: updating the main rules settings name
* Update: Updating Plugin FrameWork
* Fix: Add uploaded file to the order when the option "Allow on cart" is not activated
* Fix: Upload buttons for cart items after updating the cart by ajax
* Fix: multiple uploads for variations
* Dev: checking YITH_Privacy_Plugin_Abstract for old plugin-fw versions
* Dev: commented code to allow the thank you message
* Dev: added filter to the email rejected and accepted message
* Dev: improve function get_instance()
* Dev: added a class when file is accepted or rejected by admin


= Version 1.2.2 - Released: May 29, 2018 =

* New: Support to WooCommerce 3.4.0
* GDPR:
   - New: exporting user additional uploads data info
   - New: erasing user additional uploads data info
   - New: privacy policy content
* Tweak: filter to customize email admin after upload a file
* Update: dutch language
* Update: documentation link of the plugin
* Fix: Wrong string domains
* Dev: added an argument to a filter

= Version 1.2.1 - Released: Jan 31, 2018 =

* Update: plugin framweork 3.0.11
* New: support to WooCommerce 3.3.x


= Version 1.2.0 - Released: Jan 04, 2018 =

* New: dutch translation
* Update: plugin framework to the version 3.0.5
* Dev: new filter 'yith_ywau_notes_frontend_label'


= Version 1.1.30 - Released: Aug 01, 2017 =

* Dev: added filter 'ywau_link_class_message' to change the class of upload link
* Fix: prevent error for corrupted files
* Fix: order upload text option not used


= Version 1.1.29 - Released: Jul 19, 2017 =

* Fix: accept/reject uploads issue


= Version 1.1.28 - Released: Jul 18, 2017 =

* Fix: subject and email heading fields not always getting the selected value
* Update: plugin core framework


= Version 1.1.27 - Released: Jul 06, 2017 =

* New: support for WooCommerce 3.1.
* New: tested up to WordPress 4.8.
* Update: YITH Plugin Framework.

= Version 1.1.26 - Released: May 19, 2017 =

* New: set the message to be shown in cart/checkout page when using the order upload.
* Update: language files.

= Version 1.1.25 - Released: May 19, 2017 =

* Fix: Illegal string offset error when uploading a file to the cart.
* Fix: conflict with YITH Event Tickets.
* Tweak: prevent multiple emails notification for one order.

= Version 1.1.24 - Released: May 10, 2017 =

* Fix: missing button for uploading files to the order.
* Fix: on cart page, upload status not updated after a successful upload.

= Version 1.1.23 - Released: May 04, 2017 =

* Fix: uploaded images not flushed after a valid checkout.

= Version 1.1.22 - Released: Apr 26, 2017 =

* Update: plugin-fw.
* Fix: unable to save variation rules.

= Version 1.1.21 - Released: Apr 04, 2017 =

* New: Support WooCommerce 3.0
* Fix: YITH Plugin Framework initialization.
* Fix: Unable to translate "Choose one of the following formats" string

= Version 1.1.20 - Released: Jan 02, 2017 =

* Fixed: removed the upload link in emails

= Version 1.1.19 - Released: Dec 07, 2016 =

* Added: ready for WordPress 4.7
* Added: two filters that let third party plugins or themes to choose if the upload is enabled for specific pages

= Version 1.1.18 - Released: Nov 23, 2016 =

* Tweaked: scripts enqueued only in pages where the upload could be done, considering the plugin options and the product status
* Fixed: upload button not visible in checkout page if cart visibility was set to false on plugin's options

= Version 1.1.17 - Released: Aug 24, 2016 =

* Fixed: pop up in wrong position on checkout page

= Version 1.1.16 - Released: Aug 23, 2016 =

* Fixed: duplicated uploaded files on orders now work fine.
* Fixed: action button for accepting or rejecting the uploaded file on orders now triggers the expected action

= Version 1.1.15 - Released: Jul 04, 2016 =

* Fixed: do not shown empty div if the order do not have file uploaded
* Fixed: do not show the old order as all file uploaded were accepted, if there isn't any file uploaded

= Version 1.1.14 - Released: Jun 15, 2016 =

* Fixed: accept and reject button did not trigger the event

= Version 1.1.13 - Released: Jun 13, 2016 =

* Added: WooCommerce 2.6 100% compatible
* Added: spanish localization

= Version 1.1.12 - Released: May 09, 2016 =

* Added: WPML compatibility for "disabled upload" for translated products
* Fixed: the upload action based on the order status do not work for uploads associated to the order

= Version 1.1.11 - Released: Apr 29, 2016 =

* Fixed: the uploaded files were not associated to the order is both order and product uploads option was set
* Fixed: the upload button for orders was not displayed on thankyou page

= Version 1.1.10 - Released: Apr 27, 2016 =

* Added: admin can choose if the upload rules have to be used only for products, only for orders or for both of them
* Fixed: the upload rule for orders are shown on cart event if the related option is disabled

= Version 1.1.9 - Released: Apr 26, 2016 =

* Fixed: the upload fails for some file extensions
* Updated: yith-woocommerce-additional-uploads.pot file

= Version 1.1.8 - Released: Apr 20, 2016 =

* Added: let your customer to upload files attached to the whole order
* Updated: support to WP 4.5
* Updated: YITH Plugin FW

= Version 1.1.7 - Released: Mar 14, 2016 =

* Fixed: script syntax issues on long rule description

= Version 1.1.6 - Released: Mar 10, 2016 =

* Added: option that let the customer upload a file from my-account page

= Version 1.1.5 - Released: Mar 08, 2016 =

* Updated: sent email on file uploaded by the customer
* Updated: yith-woocommerce-additional-uploads.pot file
* Added: action yith_ywau_email_file_uploaded_order_item on email that notify file uploaded

= Version 1.1.4 - Released: Feb 08, 2016 =

* Fixed: jQuery script that shows the upload rules on cart page

= Version 1.1.3 - Released: Jan 25, 2016 =

* Fixed: unable to modify a file if it was rejected

= Version 1.1.2 - Released: Jan 21, 2016 =

* Fixed: upload fails when the option Storing mode is set to "order number"

= Version 1.1.1 - Released: Jan 20, 2016 =

* Fixed: some layout issue

= Version 1.1.0 - Released: Jan 18, 2016 =

* Updated: plugin ready for WooCommerce 2.5
* Fixed: some method call fails with PHP prior than 5.6

= Version 1.0.8 - Released: Dec 18, 2015 =

* Fixed: deleting uploaded file fails on simple products

= Version 1.0.7 - Released: Nov 23, 2015 =

* Updated: script enqueue priority changed to 199 to ensure PrettyPhoto will be registered
* Updated: changed action used for YITH Plugin FW loading from after_setup_theme to plugins_loaded

= Version 1.0.6 - Released: Nov 03, 2015 =

* Fixed: totals on checkout page doesn't update changing shipping methods

= Version 1.0.5 - Released: Oct 29, 2015 =

* Added: Separated lines in cart for multiple items of same product
* Updated: YITH plugin framework

= Version 1.0.4 - Released: Oct 26, 2015 =

* Fixed: wrong file path used while including emogrifier.php file

= Version 1.0.3 - Released: Oct 06, 2015 =

* Fixed: files attached to variations not downloadable.

= Version 1.0.2 - Released: Sep 17, 2015 =

* Added: new option to allow file upload from checkout page or thank you page.
* Added: you can add different upload rules for each variation instead of using the same rules for any product variations.
* Added: users can edit uploaded files even from cart page.

= Version 1.0.1 - Released: Sep 01, 2015 =

* Fixed: removed deprecated woocommerce_update_option_X hook.

= 1.0.0  - Released: Aug 14, 2015 =

* Initial release
