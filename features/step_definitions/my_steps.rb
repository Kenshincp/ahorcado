
Given("que iniciamos el juego") do
    visit '/'
  end
  
  When("adivina con {string}") do |string|
    fill_in("letraIngresada", :with => string)
    click_button("enviar")
  end
  
  Then("debe mostrarme {string}") do |resultado|
    expect(page.body).to match /#{resultado}/m
  end