function checkAvailability() {
  var propertyId = $('#propertyId').val();
  var checkIn = $('#checkIn').val();
  var checkOut = $('#checkOut').val();

  $.ajax({
      url: '/check-availability',
      type: 'GET',
      data: { propertyId: propertyId, checkIn: checkIn, checkOut: checkOut },
      success: function (response) {
          var roomsHtml = '';
          $.each(response, function (index, room) {
              roomsHtml += '<label>';
              roomsHtml += '<input type="checkbox" name="selectedRooms[]" value="' + room.id + '">';
              roomsHtml += room.name;
              roomsHtml += '</label>';
          });
          $('#availableRooms').html(roomsHtml);
          nextStep();
      },
      error: function (error) {
          console.log(error);
      }
  });
}

function prevStep() {
  // Implement logic to navigate to the previous step
}

function nextStep() {
  // Implement logic to navigate to the next step
}






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
                var form = $('<form>', {
                    action: '/step2',  // Update this to your actual endpoint
                    method: 'POST',
                    style: 'display: none;'
                });
                
                // Append a hidden input field with the roomIds
                $('<input>').attr({
                    type: 'hidden',
                    name: 'roomIds',
                    value: response.roomIds.join(',')
                }).appendTo(form);
              
                $('<input>').attr({
                    type: 'hidden',
                    name: 'pId',
                    value: response.pId
                }).appendTo(form);
                

                $('<input>').attr({
                    type: 'hidden',
                    name: 'checkIn',
                    value: response.checkIn
                }).appendTo(form);
                
                $('<input>').attr({
                    type: 'hidden',
                    name: 'checkOut',
                    value: response.checkOut
                }).appendTo(form);
               
            
                // Append the CSRF token
                $('<input>').attr({
                    type: 'hidden',
                    name: '_token',
                    value: $('meta[name="csrf-token"]').attr('content')
                }).appendTo(form);
                
                // Append the form to the body and submit it
                form.appendTo('body').submit();
                
                // Display result in the resultContainer
            //     window.location.href = "/step2?roomIds=" + response.roomIds.join(',');
            //     console.log(response.roomIds)
            //     $('#resultContainer').html(response.message);

            // },
            },
            error: function(xhr, status, error) {
                console.error(error);
                // Handle error if needed
            }
        });
    });
});
$("#addGuest").click(function() {
    // Clone only the form fields and the button without the form tag
    var clonedContent = $(".guestForm:first .input-group, #addGuest").clone();

    // Clear the values in the cloned fields
    clonedContent.find('input').val('');

    var clonedIndex = $(".guestForm").length;
    clonedContent.find('input').each(function(index, element) {
        var originalName = $(element).attr('name');
        var newName = originalName.replace(/\[\d+\]/g, '[' + clonedIndex + '][]');
        $(element).attr('name', newName);

        var originalId = $(element).attr('id');
        if (originalId) {
            var newId = originalId + '_' + clonedIndex;
            $(element).attr('id', newId);
        }
    });

    // Append the cloned content to the container
    $("#guestContainer").append(clonedContent);
});


});
  