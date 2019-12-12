Given("visito la pagina home") do
    visit '/'
end
  
Then("deberia ver el mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m 
end
