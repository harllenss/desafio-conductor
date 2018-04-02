# Instalando Ruby

Para rodar o projeto, precisamos ter instalado o ruby em nossa máquina. O tutoriala seguir é a instalação para o ruby em windows.
Segue abaixo os passos para instalação:

# 1. Instalando Ruby 64 Bits

a) Fazer download da versão 2.4.x x64 http://rubyinstaller.org/downloads/
b) Instalar no diretório C:\Ruby24-x64
c) Antes de clicar em Install, você pode marcar todas disponíveis.
c) Feche o Console do CMDER, e abre de novo, em seguida, digite o comando ruby –v, se der tudo certo você vai ver o seguinte resultado:
ruby 2.3.3p222 (2016-11-21 revision 56859) [x64-mingw32]

# 2. Instalando Devkit 64 Bits

a) http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe
b) Descompactar no diretório C:\Ruby24-x64\devkit
c) No Console do Cmder, acessar via linha de comando, a pasta onde foi instalado o DEVKIT. Com o comando: cd C:\Ruby24-x64\devkit
d) Na sequencia digite o comando: ruby dk.rb init
e) Agora abra o arquivo config.yml que foi gerado
f) A ultima linha do arquivo deve conter o valor : -C:/Ruby24-x64. Caso contrário faça o ajuste no arquivo. Não esqueça do caractere — antes do C:\.
g) No Console do Cmder, digite o comando: ruby dk.rb install

# 3. Instalando o Bundler:

a) gem install bundler

# Rodando o Projeto

a) Abra os dois projetos na pasta tests
b) Execute o comando bundle install na linha de comando
c) Execute o comando cucumber

# Ponto Importante

Caso estejam utilizando o firefox como padrão, favor alocar o arquivo "geckodriver.exe" na pasta Windows.
