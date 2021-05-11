# encoding: utf-8
#language:pt

@consultar_swapi
Funcionalidade: Consultar Swapi
  Como uma aplicação de controle de gestão do SWAPI
  Desejo que seja possível consultar os dados
  Para poder visualizar as informações que consiste na base de dados

  @consultar_films
  Cenario: Consultar Films
    Quando solicitado uma requisição de consulta do swapi "films"
    E deve ser verificado os dados retornados do swapi "films"
    Então o status code do swapi deve ser "200"

  @consultar_planets
  Cenario: Consultar Planets - Com valor acima do esperado
    Quando solicitado uma requisição de consulta do swapi "planets"
    E deve ser verificado os dados retornados do swapi "planets"
    Então o status code do swapi deve ser "404"
    E deve ser exibido a mensagem "Not found"