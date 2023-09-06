# Script para analizar un proyecto Ruby on Rails

# Obtén la ubicación del script en ejecución
script_dir = File.dirname(__FILE__)

# Asegúrate de que el script se está ejecutando en el directorio del proyecto
unless File.directory?(File.join(script_dir, 'app'))
  puts "Este script debe ejecutarse en el directorio del proyecto Ruby on Rails."
  exit
end

# Directorio donde se guardarán los archivos de texto
output_dir = File.join(script_dir, "analisis_proyecto")
Dir.mkdir(output_dir) unless Dir.exist?(output_dir)

# Archivos para modelos, controladores y vistas
model_file = File.join(output_dir, "modelos.txt")
controller_file = File.join(output_dir, "controladores.txt")
view_file = File.join(output_dir, "vistas.txt")

# Función para analizar modelos
def analizar_modelos(path, model_file)
  model_files = Dir.glob(File.join(path, 'app', 'models', '*.rb'))
  
  model_files.each do |model_file_path|
    model_name = File.basename(model_file_path, '.rb')
    model_content = File.read(model_file_path)
    
    # Agregar el contenido del modelo al archivo de modelos
    File.open(model_file, 'a') do |file|
      file.puts("Modelo: #{model_name}")
      file.puts(model_content)
      file.puts("\n")
    end
  end
end

# Función para analizar controladores
def analizar_controladores(path, controller_file)
  controller_files = Dir.glob(File.join(path, 'app', 'controllers', '**', '*.rb'))
  
  controller_files.each do |controller_file_path|
    controller_name = controller_file_path.split('/')[-2..-1].join('_').gsub('.rb', '')
    controller_content = File.read(controller_file_path)
    
    # Agregar el contenido del controlador al archivo de controladores
    File.open(controller_file, 'a') do |file|
      file.puts("Controlador: #{controller_name}")
      file.puts(controller_content)
      file.puts("\n")
    end
  end
end

# Función para analizar vistas
def analizar_vistas(path, view_file)
  view_files = Dir.glob(File.join(path, 'app', 'views', '**', '*.*'))
  
  view_files.each do |view_file_path|
    view_name = view_file_path.split('/')[-2..-1].join('/')
    view_content = File.read(view_file_path)
    
    # Agregar el contenido de la vista al archivo de vistas
    File.open(view_file, 'a') do |file|
      file.puts("Vista: #{view_name}")
      file.puts(view_content)
      file.puts("\n")
    end
  end
end

# Comienza el análisis del proyecto
analizar_modelos(script_dir, model_file)
analizar_controladores(script_dir, controller_file)
analizar_vistas(script_dir, view_file)

puts "Análisis completado. Los archivos se han generado en la carpeta '#{output_dir}'."
