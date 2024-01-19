$(document).ready(function(){
  $(document).ready(function() {
   
    // Handle form submission using Ajax
    $('#checkAvailabilityBtn').on('click', function() {
      var checkInInput = $('input[name="checkIn"]');
      if (!checkInInput.val().trim()) {
          alert('Check In date cannot be blank.');
          return;
      }

      // Validate Check Out date not blank
      var checkOutInput = $('input[name="checkOut"]');
      if (!checkOutInput.val().trim()) {
          alert('Check Out date cannot be blank.');
          return;
      }

      // Parse date strings to compare
      var checkInDate = new Date(checkInInput.val());
      var checkOutDate = new Date(checkOutInput.val());

      // Validate Check In date is less than Check Out date
      if (checkInDate >= checkOutDate) {
          alert('Check In date must be earlier than Check Out date.');
          return;
      }
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
  