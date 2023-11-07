#!/bin/bash

# Define variables
GIT_REPO="https://github.com/mmarnun/hugo_web"
RENDER_SERVICE_NAME="hugo site alex"
RENDER_TOKEN="rnd_cY6uu8PYbJkpdYYwE7STInFosRk1"

# Configure Render CLI
echo "Configurando Render CLI..."
render account:token $RENDER_TOKEN
render service:select $RENDER_SERVICE_NAME

# Pull the latest changes from the Git repository
echo "Actualizando el repositorio Git..."
git pull origin main

# Generate the Hugo site
echo "Generando el sitio Hugo..."
hugo server

# Deploy to Render.com
echo "Desplegando en Render.com..."
render up

echo "¡Despliegue completado!"
