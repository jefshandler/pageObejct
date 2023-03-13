# Configuração do ambiente de teste com Robot Framework no VsCode
Este repositório contém um exemplo básico de configuração do ambiente de teste com Robot Framework. Para configurar o ambiente, siga os passos abaixo:

## Criando um ambiente virtual
Para isolar as dependências do projeto, é recomendado criar um ambiente virtual. No terminal, execute o seguinte comando:

```python -m venv venv```
Isso criará uma pasta venv com o ambiente virtual.

##Ativando o ambiente virtual
Para ativar o ambiente virtual, execute o seguinte comando:

```venv\Scripts\activate```
Isso ativará o ambiente virtual e você verá (venv) no início da linha de comando.

## Instalando o pacote wheel
O pacote wheel é necessário para instalar outras dependências do projeto. Para instalá-lo, execute o seguinte comando:

```pip install wheel```

## Configurando o ROBOT
O Robot Framework é a biblioteca base para o funcionamento do Robot. Para instalá-lo, execute o seguinte comando:

```pip install robotframework```

## Biblioteca Selenium

```pip install selenium```
usado para instalar a biblioteca Selenium em um ambiente Python. A biblioteca Selenium é amplamente usada para automação de testes em aplicativos da web.

## Instalando a biblioteca Python Utils
Python Utils é uma coleção de pequenas funções e classes Python que tornam os padrões comuns mais curtos e fáceis. Para instalá-la, execute o seguinte comando:

```pip install utils```

## Instalando a biblioteca SeleniumLibrary
SeleniumLibrary é uma biblioteca de teste da web para Robot Framework que utiliza a ferramenta Selenium internamente. Para instalá-la, execute o seguinte comando:

```pip install --upgrade robotframework-seleniumlibrary```

### Biblioteca Faker 
Este módulo permite o uso fácil da geração de dados de teste aleatório de Faker no Robot Framework. 
```pip install robotframework-faker```

### Biblioteca ScreenCapLibrary 
ScreenCapLibrary é uma biblioteca de teste do Robot Framework para fazer capturas de tela. 
Comando: pip install --upgrade robotframework-screencaplibrar

## Update 
O Pip é um gerenciador de pacotes que é usado para instalar, atualizar e desinstalar pacotes Python, enquanto o Setuptools é um pacote que permite que você crie e distribua pacotes Python.

O comando python -m pip install --upgrade pip setuptools executa a instalação ou atualização do Pip e do Setuptools, garantindo que você tenha as versões mais recentes dessas ferramentas.

O argumento --upgrade instrui o Pip a atualizar as versões já instaladas para as versões mais recentes disponíveis.

O comando é executado no terminal e requer que o Python esteja instalado e configurado corretamente no sistema.
``` python -m pip install --upgrade pip setuptools ```

pip install pytest
pip install requests
pip install robotframework
pip install utils
pip install wheel
pip install robotframework-appiumlibrary
pip install robotframework-jsonlibrary
pip install robotframework-seleniumlibrary