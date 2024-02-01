require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/rspec'
require 'rspec'
require 'pry'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://www.saucedemo.com/'
    config.default_max_wait_time = 15
end

Capybara.page.driver.browser.manage.window.maximize

#linha que gera relatório
#cucumber --format html --out=features/logs/features.html