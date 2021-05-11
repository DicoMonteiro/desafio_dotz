### Projeto de Automação - Dotz ###

Este projeto tem como objetivo criar os scripts para o desafio da Dotz.


## Índice
- [Inicialização](#Inicialização)
- [Pré requisitos](#Pré-requisitos)
- [Instalação](#Instalação)
- [Executando os Testes](#Executando-os-Testes)
- [Outros Meios](#Outros-Meios)


## Inicialização

Para o desenvolvimento dessa aplicação de teste, foram utilizadas as seguintes ferramentas:

1.  [Ruby](https://rubyinstaller.org/)
2.  [Cucumber](https://cucumber.io/)
3.  [HTTParty](https://rubygems.org/gems/httparty/)
4.  [Rspec](https://github.com/rspec/rspec)
5.  [Git](https://git-scm.com/download/win)

### Pré requisitos

[x] Necessário instalar o [Ruby](https://rubyinstaller.org/) na versão mais recente e em seguida rodar os comandos através terminal:

```
gem install bundler --force
```

### Instalação

[x] Clone o projeto no diretório de interesse e abra o terminal dentro da pasta do projeto:

```
git clone <url-clone-projeto>
```

[x] Execute o comando abaixo para realizar a instalação das dependencias:

```
bundle install
```


### Executando os Testes
[X ]Após a instalação das dependências e configuração do ambiente, vamos executar os testes:

```
cucumber -t <TAGS> -p <PARAMETER>
```

Por exemplo:

cucumber -t @REST -p sit -p ex

[x] Executar o relatório:
  
     allure serve allure-results 

### Outros Meios

- [x] Executar o projeto sem tag:

     cucumber -p dev -p reports

- [x] Executar o projeto com tag:

     cucumber -t @TEST -p dev -p reports

- [x] Executar o relatório:
  
     allure serve allure-results 