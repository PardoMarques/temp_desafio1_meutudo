# Before sem uma tag executa antes de todos os cenários
Before do

    @base = BasePage.new

    @about = AboutPage.new
    @cart = CartPage.new
    @inventory = InventoryPage.new
    @item = ItemPage.new
    @login = LoginPage.new

    @login.go
    
end
 
# Before com tag executa antes do cenário que estiver com esta tag comentada
Before('@exemplo') do
end

# After sem uma tag executa antes de todos os cenários
After do
end
  
# Anexar os prints ao relatório
After do |scenario|

    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/,'') # Limpar Expressões Regulares
    screenshot = "features/logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)

end