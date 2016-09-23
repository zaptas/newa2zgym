/*!
 * Contact Buttons Plugin Demo 0.1.0
 * https://github.com/joege/contact-buttons-plugin
 *
 * Copyright 2015, José Gonçalves
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */
 
// Google Fonts
WebFontConfig = {
  google: { families: [ 'Lato:400,700,300:latin' ] }
};
(function() {
  var wf = document.createElement('script');
  wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
    '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})();

// Initialize Share-Buttons
$.contactButtons({
  effect  : 'fixed',
  buttons : {
      'facebook': { class: 'facebook', use: true, link: 'https://www.facebook.com/A2z-gym-1068431056574267', extras: 'target="_blank"' },
      'twitter': { class: 'twitter', use: true, link: 'https://twitter.com/a2z_gym', extras: 'target="_blank"' },
      'pinterest': { class: 'pinterest', use: true, link: 'https://in.pinterest.com/a2zgym/', extras: 'target="_blank"' },
      'google': { class: 'gplus', use: true, link: 'https://plus.google.com/102877252456343701163', extras: 'target="_blank"' },
      'instagram': { class: 'instagram', use: true, link: 'https://www.instagram.com/a2zgym/', extras: 'target="_blank"' },
   
    //'phone':      { class: 'phone separated',    use: true, link: '+91 1204370324' },
    //'email':      { class: 'email',    use: true, link: 'enquery@zaptas.com' }
  }
});