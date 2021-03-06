// Generated by CoffeeScript 1.8.0
(function() {
  $(document).ready(function() {
    var $bodyForm, $button, overlayTempl;
    $button = $('.body button[type="submit"]');
    $bodyForm = $('.body form');
    overlayTempl = '<div class="form-overlay">' + '<div>' + '<a href="#" class="form-overlay-close">X</a>' + '<h3>Procesando información</h3>' + '<div class="mt-42">' + '<span class="spinner animated rotateIn infinite icon-spinner9"></span>' + '</div>' + '</div>' + '</div>';
    $bodyForm.on('submit', function(e) {
      var formulario;
      if ($bodyForm.valid()) {
        $('body').addClass('form-on-submit').append(overlayTempl);
        formulario = $('input[name=origen]')[0].value;
        dataLayer.push({
          event: 'formSubmit',
          form: formulario,
          estado: 'Success'
        });
      }
    });
    $('.form-overlay-close').click(function(e) {
      $('.form-overlay').remove();
      $('body').removeClass('form-on-submit');
    });
  });

}).call(this);
