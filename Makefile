# Diretório de build
BUILD_DIR = build

# Compilador
CXX = g++

# Flags de compilação
CXXFLAGS = -g -Wall

# Arquivo principal de entrada
SRC = src/main.cpp

# Nome do executável
TARGET = $(BUILD_DIR)/main.exe

# Regra para criar a pasta de build (se não existir)
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Regra de compilação
$(TARGET): $(SRC) | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

# Limpeza dos arquivos gerados
clean:
	rm -rf $(BUILD_DIR)
