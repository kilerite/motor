# Carga la imagen predeterminada al sistema de archivos local de Rails
default_photo_path = Rails.root.join('app', 'assets', 'images', 'default_engine.jpg')

# Crea un objeto ActiveStorage::Blob para la imagen predeterminada
default_photo_blob = ActiveStorage::Blob.create(
  io: File.open(default_photo_path),
  filename: 'default_engine.jpg',
  content_type: 'image/jpeg'
)

# Crea 10 motores a reacción
(1..10).each do |n|
  Engine.create(
    engine_type: 'Motor a reacción',
    name: "REAC-#{n}",
    description: "Descripción del motor a reacción #{n}",
    photo: default_photo_blob
  )
end

# Crea 10 motores turbohélice
(1..10).each do |n|
  Engine.create(
    engine_type: 'Motor turbohélice',
    name: "TURBO-#{n}",
    description: "Descripción del motor turbohélice #{n}",
    photo: default_photo_blob
  )
end



# # Seed de Ciudades en Chile
# chilean_cities = [
#   { name: 'Santiago' },
#   { name: 'Valparaíso' },
#   { name: 'Concepción' },
#   { name: 'Viña del Mar' },
#   { name: 'Antofagasta' },
#   { name: 'Valdivia' },
#   { name: 'Arica' },
#   { name: 'Puerto Montt' },
#   { name: 'Rancagua' },
#   { name: 'La Serena' }
# ]

# City.create(chilean_cities)




# # Seed para crear materiales
# materials = [
#   "Turbinas",
#   "Sistemas de ignición",
#   "Sistemas de combustible"
# ]

# materials.each do |material_name|
#   Material.create(name: material_name)
# end

# puts "Se crearon #{Material.count} materiales."
