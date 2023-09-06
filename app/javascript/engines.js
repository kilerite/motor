$(document).on('turbolinks:load', function() {
    // Obtener referencias a los campos
    var engineTypeSelect = $('#engine-type-select');
    var engineNameInput = $('#engine-name-input');
  
    // Función para generar el nombre del motor
    function generateEngineName() {
      var selectedType = engineTypeSelect.val();
      if (selectedType === 'motor_a_reaccion' || selectedType === 'motor_turbohelice') {
        $.ajax({
          url: '/engines/generate_name',
          data: { engine_type: selectedType },
          success: function(response) {
            engineNameInput.val(response.name);
          }
        });
      } else {
        engineNameInput.val('');
      }
    }
  
    // Escuchar cambios en el campo de tipo de motor
    engineTypeSelect.on('change', generateEngineName);
  
    // Generar el nombre del motor inicialmente
    generateEngineName();
  });
  