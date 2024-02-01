# Funcionalidades que seguem padrão pelo sistema
class BasePage < SitePrism::Page

    element :btn_menu, 'div.bm-burger-button > button'
    element :content_menu, '#menu_button_container > div > div.bm-menu-wrap'
    element :icon_carrinho, '#shopping_cart_container'
    element :text_titulo, '#inventory_filter_container > div'
    
    def menuOptions(btnOption)
        case btnOption
            when 0 then content_menu.click_link_or_button("All Items")
            when 1 then content_menu.click_link_or_button("About")
            when 2 then content_menu.click_link_or_button("Logout")
            when 3 then content_menu.click_link_or_button("Reset App State")
            else puts "Nenhuma opção encontrada"
        end
    end

    # [Usar escopo para capturar cards completos a partir de um texto interno]
    # O scopeSelect seleciona cards/escopos. Sua utilidade esta ligada aos casos de id's dinamicos que não servem para mapeamentos  (Não utilize ID's Dinâmicos!! ~se possivel)
    # scopePointCSSS     ->  Selecionar um ponto detalhado que tenha um ID/CSSS relevante e único(de preferência)
    # scopeFullAreaCSSS  ->  Trabalhando com as Div's ancestrais do ponto escolhido, encontrar uma que separe bem os escopos e tenha um ID/CSSS relevante
    def scopeSelect(scopeName, scopeFullAreaCSSS)
        nodeScope = page.find_link(scopeName)
        nodeScope = nodeScope.ancestor(scopeFullAreaCSSS)
        return nodeScope
    end

    def useScroll(yValue)
        execute_script %Q{window.scrollBy(0, #{yValue});}
    end
  
end
  