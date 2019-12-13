When("ingreso en el campo {string} {int} y en el campo {string} {int}") do |string, int, string2, int2|
    fill_in(string, :with => int)
    fill_in(string2, :with => int2)
end

