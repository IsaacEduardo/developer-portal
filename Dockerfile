FROM squidfunk/mkdocs-material

# Copia os arquivos do projeto para dentro do container
COPY . /docs

# Define o diretório de trabalho
WORKDIR /docs

# Expõe a porta padrão do MkDocs
EXPOSE 8000

# O Entrypoint da imagem base já é "mkdocs", então aqui passamos apenas os argumentos
CMD ["serve", "--dev-addr=0.0.0.0:8000"]
