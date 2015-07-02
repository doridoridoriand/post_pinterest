require 'open-uri'
require 'json'
require 'selenium-webdriver'
require 'headless'

headless = Headless.new
headless.start

driver = Selenium::WebDriver.for :chrome

# https://favrica.net/items/5591565269702d2780000000
driver.navigate.to 'https://jp.pinterest.com/login/?referrer=pinit_button_landing&next=%2Fpin%2Fcreate%2Fbutton%2F%3Furl%3Dhttps%253A%252F%252Ffavrica.net%252Fitems%252F5591565269702d2780000000%26media%3Dhttps%253A%252F%252Ffavrica2.s3.amazonaws.com%252Fuploads%252Fitem%252Fimage%252F5591565369702d2780010000%252Flarge_file.%26guid%3DmzM6hLwJUxnK%26description%3DFAVRICA%2B-%2B%255BBAYFLOW%255D%2BBAYFLOW%252F%25E3%2582%25A4%25E3%2583%25B3%25E3%2583%2587%25E3%2582%25A3%25E3%2582%25B4%25E9%25B9%25BF%25E3%2581%25AE%25E5%25AD%2590%25E3%2583%259D%25E3%2583%25AD%25E3%2582%25B7%25E3%2583%25A3%25E3%2583%2584'

# URLの例
# driver.navigate.to 'https://jp.pinterest.com/login/?referrer=pinit_button_landing&next=/pin/create/button/?url=アイテム詳細ページ&media=イメージファイル&description=ディスクリプション'

p driver.title

driver.save_screenshot('/home/vagrant/dev/unko1.png')

username = driver.find_element(:xpath, "//li[@class='loginUsername']/input")
username.send_keys('登録したメールアドレス')

driver.save_screenshot('/home/vagrant/dev/unko2.png')

username = driver.find_element(:xpath, "//li[@class='loginPassword']/input")
username.send_keys('登録したパスワード')

driver.save_screenshot('/home/vagrant/dev/unko3.png')

p driver.title

driver.find_element(:xpath, "//div[@class='formFooterButtons']/button").click

driver.save_screenshot('/home/vagrant/dev/unko4.png')

p driver.title

driver.save_screenshot('/home/vagrant/dev/unko5.png')

driver.find_element(:xpath, "//ul[@class='sectionItems']/li/div/button").click

driver.save_screenshot('/home/vagrant/dev/unko6.png')

p driver.title

driver.save_screenshot('/home/vagrant/dev/unko7.png')

