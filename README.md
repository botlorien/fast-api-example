# fast-api-example
A simple example of api with fast-api
```bash
git clone https://github.com/botlorien/fast-api-example.git
cd fast-api-example
# Constrói a imagem Docker com o nome 'fastapi-app'
docker build -t fastapi-app .

# Executa um container baseado na imagem criada
docker run -d -p 8000:8000 --name fastapi-container fastapi-app
```
