# Diretório de build
BUILD_DIR = build

# Compilador
CXX = g++

# Flags de compilação
CXXFLAGS = -g -Wall -Iinclude

# Arquivos fonte
SRC = src/main.cpp

# Nome do executável
TARGET = $(BUILD_DIR)/main.exe

# Regra para criar a pasta de build (se não existir)
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Regra de compilação para arquivos objeto
$(BUILD_DIR)/%.o: src/%.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Regra de compilação do executável
$(TARGET): $(BUILD_DIR)/main.o
	$(CXX) $(CXXFLAGS) -o $@ $(BUILD_DIR)/main.o

# Limpeza dos arquivos gerados
clean:
	rm -rf $(BUILD_DIR)
