document.addEventListener('turbolinks:load', function() {
  var addButton = document.getElementById("addAdoptionText");

  if (addButton) {
      addButton.addEventListener("click", function () {
          var inputField = document.getElementById("fail_title");
          if (inputField) {
              var existingText = inputField.value;
              if (existingText.length > 0) {
                  inputField.value = existingText + "(里親募集中)";
              } else {
                  inputField.value = "(里親募集中)";
              }
          }
      });
  }
});