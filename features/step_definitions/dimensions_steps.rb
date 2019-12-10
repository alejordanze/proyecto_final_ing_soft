Given("visito la pagina simuladora") do
    visit '/'
end

When("ingreso en el campo columnas {int}") do |x|
    visit '/simulate', :post, "columnas=#{x}"
end
  
When("ingreso en el campo filas {int}") do |int|
    visit '/simulate', :post, "filas=#{int}"
end

  
Then("deberia ver el {string}") do |string|
    last_response.body.should =~ /#{string}/m
end
  
When("presiono el boton {string}") do |string|
    click_button(string)
end
  