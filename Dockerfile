# Use a imagem base oficial do Python 3.11
FROM python:3.11-slim

# Configuração do diretório de trabalho
WORKDIR /app

# Copia o arquivo Wheel gerado
COPY dist/*.whl /app

# Instala o Wheel
RUN pip install *.whl

# Copia o restante do código do aplicativo
#COPY . /app

# Exposição da porta 5000 para o Flask
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "-m", "hello_world.app"]
