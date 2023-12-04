# Meu Projeto Robot Framework

## Descrição
Este é um projeto de automação de teste usando o Robot Framework. Ele inclui testes para validar o login em um site de exemplo.

## Pré-requisitos
- Python 3.x instalado
- Robot Framework instalado
- SeleniumLibrary instalada

## Instalação das Dependências
```bash
pip install -r requirements.txt

## Configuração

1- Clone do repositorio
```bash
git clone https://github.com/seu-usuario/seu-projeto.git

## Execução dos testes

### Executar todos os testes
```bash
robot path/to/tests

### Executar um teste especifico
```bash
robot --test "Nome do Teste" path/to/tests

### Executar Testes com Tags
```bash
robot --include tag_name path/to/tests

### Gerar Relatório HTML
```bash
robot --outputdir results path/to/tests

## Estrutura do projeto

* path/to/tests: Contém os arquivos de teste (.robot).
* path/to/results: O diretório onde os resultados dos testes serão armazenados.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma issue ou enviar um pull request.

## Licença


Altere as seções conforme necessário para refletir a estrutura específica do seu projeto e as opções de execução que deseja destacar. Certifique-se de incluir informações claras sobre como executar todos os testes, testes específicos, testes com tags e como gerar relatórios.
