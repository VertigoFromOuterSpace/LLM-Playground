#!/bin/bash

echo "🧠 LLM Injection Playground - Setup"
echo "==================================="

# Verificar se Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 não encontrado. Por favor, instale Python 3.8 ou superior."
    exit 1
fi

echo "✅ Python encontrado: $(python3 --version)"

# Criar ambiente virtual se não existir
if [ ! -d "venv" ]; then
    echo "📦 Criando ambiente virtual..."
    python3 -m venv venv
else
    echo "✅ Ambiente virtual já existe"
fi

# Ativar ambiente virtual
echo "🔄 Ativando ambiente virtual..."
source venv/bin/activate

# Instalar dependências
echo "📥 Instalando dependências..."
pip install -r requirements.txt

echo ""
echo "🎉 Setup concluído com sucesso!"
echo ""
echo "Para iniciar o projeto:"
echo "1. Execute: source venv/bin/activate"
echo "2. Execute: python app.py"
echo "3. Abra html/index.html no navegador"
echo ""
echo "🔗 Backend: http://localhost:5000"
echo "🌐 Frontend: Abra html/index.html"