Quando("solicitado uma requisição de consulta do swapi {string}") do |text|
  @response_body = swapi.consult_swapi(text)
end

Quando("deve ser verificado os dados retornados do swapi {string}") do |option|
  total_titles = []
  if option == "films"
    @response_body["results"].length.times do |i|
      total_titles[i] = @response_body["results"][i]["title"]
    end
    print total_titles
  else
    count = @response_body["count"]
    number = Faker::Number.number(digits: 3)
    if count < number
      @response_body = swapi.consult_swapi("planets/#{number}")
    else
      print "Não realiza uma nova requisição!"
    end
  end
end

Entao("o status code do swapi deve ser {string}") do |code|
  expect(@response_body.code.to_s).to eql code
end

Entao("deve ser exibido a mensagem {string}") do |msg|
  expect(@response_body["detail"]).to eql msg
end