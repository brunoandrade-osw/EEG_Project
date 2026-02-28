# Imagem base completa (mais segura para bibliotecas pesadas como MNE e XGBoost)
FROM python:3.10

# Define a pasta de trabalho
WORKDIR /projeto_isd_ppgn

# Copia e instala as dependências do requirements.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do projeto
COPY . .

# Inicia o Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]