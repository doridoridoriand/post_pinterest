require 'open-uri'
require 'json'
require 'selenium-webdriver'
require 'headless'

headless = Headless.new
headless.start

driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'https://jp.pinterest.com/'

p driver.title

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko1.png")

driver.find_element(:xpath, "//div[@class='inspiredSearchDialog ']/button").click

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko1.png")

username = driver.find_element(:xpath, "//li[@class='loginUsername']/input")
username.send_keys('メールアドレス')

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko2.png")

username = driver.find_element(:xpath, "//li[@class='loginPassword']/input")
username.send_keys('パスワード')

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")

driver.find_element(:xpath, "//div[@class='formFooterButtons']/button").click

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")

p driver.title

driver.navigate.to 'https://jp.pinterest.com/search/pins/?q=chanel'

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")

driver.find_element(:xpath, "//div[@class='GridItems Module centeredWithinWrapper padItems variableHeightLayout']/div[4]").click

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko3.png")

driver.find_element(:xpath, "//div[@class='repinLike']/button[3]").click

driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko4.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko4.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko4.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko4.png")
driver.save_screenshot("/home/vagrant/dev/#{Time.now.to_s}_unko4.png")
