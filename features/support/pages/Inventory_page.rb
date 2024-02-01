class InventoryPage < BasePage

    element :box_filter, '#inventory_filter_container > select.product_sort_container'
    
    def link_backpack
        page.find_link('Sauce Labs Backpack')
    end

    # @inventory.itemAndOption('Sauce Labs Onesi', 'preco')
    def itemAndOption (itemName, option)
        nodeScope = page.find_link(itemName)
        nodeScope = nodeScope.ancestor('.inventory_list > .inventory_item')

        case option
            when "item"
                item.click_link_or_button(itemName)

            when "descricao"
                return item.find(".inventory_item_desc").text

            when "preco"
                return item.find(".inventory_item_price").text

            when "adicionar"
                item.click_link_or_button("ADD TO CART")

            else 
                puts "Nenhuma opção encontrada"
        end
    end

    def filterBy(option)
        box_filter.click
        sleep 1
         
        case option
            when "A a Z"
                find("[value='az']").click

            when "Z a A"
                find("[value='za']").click
                    
            when "Menor preco"
                find("[value='lohi']").click

            when "Maior preco"
                find("[value='hilo']").click

            else 
                puts "Nenhuma opção encontrada"

        end
        sleep 1
        
        box_filter.click
    end

    def go
        visit '/inventory.html'
    end
  
end