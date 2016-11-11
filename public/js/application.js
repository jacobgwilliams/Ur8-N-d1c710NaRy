$(document).ready(function() {
  $(document).on('click', '.translate_to_noob', function(event){
    event.preventDefault();
    // $('#noob_def').
    $(this).siblings('.noob_def').removeClass('hidden');
    $(this).next().removeClass('hidden');
    $(this).siblings('.l33t_def').addClass('hidden');
    $(this).addClass('hidden');
  })

  $(document).on('click', '.translate_to_leet', function(event){
    event.preventDefault();
    // $('#noob_def').
    $(this).siblings('.noob_def').addClass('hidden');
    $(this).addClass('hidden');
    $(this).siblings('.l33t_def').removeClass('hidden');
    $(this).prev().removeClass('hidden');
  })

  $(document).on('click', '.screenshot', function(event){
    event.preventDefault();
    // html2canvas(element, options);
  })
});
