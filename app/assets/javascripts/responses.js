$(document).ready(function(){
	$('#guest-field')
		.on('cocoon:before-insert', function(e, e_to_be_added) {
        e_to_be_added.fadeIn('slow');
      })
})

