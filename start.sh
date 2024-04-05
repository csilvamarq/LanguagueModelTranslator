platform="Linux"
uname=$(uname)
case $uname in
    "Darwin")
    platform="MacOS / OSX"
    ;;
    MINGW*)
    platform="Windows"
    ;;
esac

echo "Plataforma detectada: $platform"
cd LibreTranslate
if [[ $platform == "Linux" || $platform == "MacOS / OSX" ]]; then
    ./run.sh # Ejecutar run.sh si es Linux o MacOS
elif [[ $platform == "Windows" ]]; then
    ./run.bat # Ejecutar run.bat si es Windows
fi
cd ..
cd llama-gpt
    ./run.sh --model 7b # Ejecutar run.sh si es Linux o MacOS
cd ..
cd soundox-project
docker-compose up -d

if command -v python3 &>/dev/null; then
else
    echo "Python 3 no está instalado. Por favor, instálelo."
    exit 1
fi

# Verificar si pip está instalado
if command -v pip3 &>/dev/null; then
else
    echo "pip no está instalado. Por favor, instálelo."
    exit 1
fi

python3 index.py

