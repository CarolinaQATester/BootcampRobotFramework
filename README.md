# Bootcamp RobotFramework

## Comando para executar todos cenarios e gerando os resultados dentro da pasta results

robot --outputdir Results Tests/teste.robot

## Comando para executar um cenario

robot --test "Cenario 01: Validar login com credenciais validas" login.robot

## Comando para executar por tags

robot --include Regressivo login.robot