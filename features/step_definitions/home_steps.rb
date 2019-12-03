Given("visito la pagina home") do
    visit '/'
end
  
Then("deberia ver el mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
end
