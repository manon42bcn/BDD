bash /brew/install.sh
brew install python3
brew install virtualenv
brew install pip-tools
#
#	para iniciar un virtual env... virtualenv --python=$(which python3) (nombre entorno)
#	una vez en el entorno (ojo con la shell, en casa solo me funciona con zsh)
#	podemos iniciarlo e instalar via pip selenium, requests y behave
#	IMPORTANTE: estructura de archivos, recordar palabras clave
#	ante la duda, revisa los tests que hiciste sobre la funcion recursiva 
#	para manejar bien el envio de datos desde behave y el Outline
#	anoche solvente el tema del driver con las lineas que estan en
#	los archivos de prueba, pero con -> brew install geckodriver


# de no encontrar los archivos, entonces...
# from selenium import webdriver
# from selenium.webdriver.firefox.firefox_binary import FirefoxBinary

# binary = FirefoxBinary('path/to/installed firefox binary')
# browser = webdriver.Firefox(firefox_binary=binary)