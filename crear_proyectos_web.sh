#!/bin/bash

# Lista de nombres de proyectos
proyectos=(
  "01-pagina-personal"
  "02-tarjeta-contacto"
  "03-cv-sencillo"
  "04-receta"
  "05-acerca-de-mi"
  "06-landing-simple"
  "07-formulario-contacto"
  "08-tabla-horarios"
  "09-galeria-imagenes"
  "10-blog-simple"
  "11-tarjetas-productos"
  "12-error-404"
  "13-red-social-ficticia"
  "14-menu-responsivo"
  "15-invitacion-evento"
  "16-portafolio-grid"
  "17-cv-infografico"
  "18-landing-app-movil"
  "19-redisenio-netflix-spotify"
  "20-onepage-scroll"
)

# Crear carpetas y archivos
for nombre in "${proyectos[@]}"; do
  mkdir -p "$nombre"
  touch "$nombre/index.html"
  touch "$nombre/style.css"

  # Plantilla básica para index.html
  cat <<EOF > "$nombre/index.html"
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${nombre//-/ }</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>

  <h1>Proyecto: ${nombre//-/ }</h1>

</body>
</html>
EOF

  # Plantilla básica para style.css
  cat <<EOF > "$nombre/style.css"
/* Estilos para ${nombre//-/ } */
body {
  font-family: sans-serif;
  margin: 0;
  padding: 20px;
  background-color: #f4f4f4;
}
EOF

done

echo "✅ Estructura de proyectos creada exitosamente."
