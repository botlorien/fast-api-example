# Utiliza uma imagem base oficial do Python
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de requisitos e o código da API para o container
COPY requirements.txt .
COPY main.py .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que a aplicação irá utilizar
EXPOSE 8000

# Comando para iniciar a aplicação
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
