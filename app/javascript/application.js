// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "channels"

function showAdditionalFields(selection) {
    var additionalFields = document.querySelectorAll('.additional-fields');
  
    additionalFields.forEach(function(field) {
      if (field.dataset.type === selection) {
        field.removeAttribute('hidden');
      } else {
        field.setAttribute('hidden', 'true');
      }
    });
  
    // Show or hide partials based on pay_type
    if (selection === 'Check') {
      document.getElementById('check-partial').removeAttribute('hidden');
    } else {
      document.getElementById('check-partial').setAttribute('hidden', 'true');
    }
  
    if (selection === 'Credit card') {
      document.getElementById('cc-partial').removeAttribute('hidden');
    } else {
      document.getElementById('cc-partial').setAttribute('hidden', 'true');
    }
  
    if (selection === 'Purchase order') {
      document.getElementById('po-partial').removeAttribute('hidden');
    } else {
      document.getElementById('po-partial').setAttribute('hidden', 'true');
    }
  }
  