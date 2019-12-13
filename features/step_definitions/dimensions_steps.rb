Given("visito la pagina simuladora") do
    visit '/'
end

When("ingreso en el campo columnas {int}") do |x|
    fill_in('columnas', :with => x)

end
  
When("ingreso en el campo filas {int}") do |int|
    fill_in('filas', :with => int)
end

  
Then("deberia ver el {string}") do |string|
    last_response.body.should =~ /#{string}/m
end
  
When("presiono el boton {string}") do |string|
    click_button(string)
end
