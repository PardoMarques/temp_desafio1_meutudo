Dado('que acesso a página do desafio Challenging DOM') do
  @desafio.go
  @textoA = @desafio.btn_azul.text
  @textoB = @desafio.btn_vermelho.text
  @textoC = @desafio.btn_verde.text
end

Quando('clicar no botão {string}') do |cor_botao|
  @desafio.click_botao_colorido(cor_botao)
end

Então('pelo menos um dos textos contidos nos botões será modificado') do
  resultadoA = (@textoA == @desafio.btn_azul.text)
  resultadoB = (@textoB == @desafio.btn_vermelho.text)
  resultadoC = (@textoC == @desafio.btn_verde.text)
  expect((resultadoA && resultadoB && resultadoC)).to eql(false)
end

Quando('clicar em {string} da linha {int}') do |opcao, linha|
  @desafio.click_opcao_e_linha(opcao, linha)
end

Então('a url da página será atualizada com o final {string}') do |urlFinal|
  resultado = "https://the-internet.herokuapp.com/challenging_dom" + urlFinal
  expect(page.current_url).to eql(resultado)
end