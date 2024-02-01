Quando('o usuário {string} com a senha {string} efetuar o login') do |userName, password|
  @login.doLogin(userName, password)
end

Então("estará contido o seguinte texto {string} na página") do |textPage|
  expect(page).to have_content textPage

  binding.pry
  
end

Então("não estará contido o seguinte texto {string} na página") do |notVisibleElement|
  expect(page).to_not have_content notVisibleElement
end
