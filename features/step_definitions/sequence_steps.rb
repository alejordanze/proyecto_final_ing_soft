Given("visito la pagina de simulacion") do
    visit '/simulate'
end

When("ingreso el campo {string} {string}") do |campo, valor|

    fill_in(campo, :with => valor)
end
  
When("ingreso el campo {string} {int}") do |campo, valor|
    
    fill_in(campo, :with => valor)
end

Then("deberia ver {string}") do |string|
    last_response.body.should =~ /#{string}/m 
end

When("ingreso en el campo {string} {string}") do |campo, valor|
    fill_in(campo, :with => valor)
end