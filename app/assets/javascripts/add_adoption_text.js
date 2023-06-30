document.addEventListener('turbolinks:load', function() {
  var addButton = document.getElementById("addAdoptionText");

  if (addButton) {
      addButton.addEventListener("click", function () {
          var inputField = document.getElementById("fail_title");
          if (inputField) {
              var existingText = inputField.value;
              if (existingText.length > 0) {
                  inputField.value = existingText + "(里募)";
              } else {
                  inputField.value = "(里募)";
              }
          }
      });
  }
});