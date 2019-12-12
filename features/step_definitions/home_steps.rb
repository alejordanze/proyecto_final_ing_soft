Given("visito la pagina home") do
    visit '/'
end
  
Then("deberia ver el mensaje {string}") do |mensaje|
    expect(last_response.body).to have_content(mensaje)  
end
