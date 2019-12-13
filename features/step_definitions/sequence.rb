When("ingreso en el campo {string} {string}") do |string, string2|
    fill_in(string, :with => string2)
end

Then("deberia ver {string}") do |string|
    last_response.body.should =~ /#{string}/m 
  end
  