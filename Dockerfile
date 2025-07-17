# Imagem base com Python 3.11 (ou escolha a que preferir)
FROM python:3.11-slim

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos necessários
COPY app.py requirements.txt ./

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que a aplicação vai rodar
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "--workers", "3", "app:app"]
