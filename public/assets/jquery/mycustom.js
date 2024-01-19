$(document).ready(function(){
  $(document).ready(function() {
    // Handle form submission using Ajax
    $('#checkAvailabilityBtn').on('click', function() {
       
      $.ajax({
            url: $('#availForm').attr('action'),
            type: 'POST',
            data: $('#availForm').serialize(),
            success: function(response) {
                // Display result in the resultContainer
               console.log(response)
                $('#resultContainer').html(response.message);

            },
            error: function(xhr, status, error) {
                console.error(error);
                // Handle error if needed
            }
        });
    });
});
  });
  