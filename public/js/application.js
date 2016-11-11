$(document).ready(function() {
  $(document).on('click', '#translate_to_noob', function(event){
    event.preventDefault();
    // $('#noob_def').
    $('#noob_def').removeClass('hidden');
    $('#translate_to_leet').removeClass('hidden');
    $('#l33t_def').addClass('hidden');
    $('#translate_to_noob').addClass('hidden');
  })

  $(document).on('click', '#translate_to_leet', function(event){
    event.preventDefault();
    // $('#noob_def').
    $('#noob_def').addClass('hidden');
    $('#translate_to_leet').addClass('hidden');
    $('#l33t_def').removeClass('hidden');
    $('#translate_to_noob').removeClass('hidden');
  })
});
