#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
Portfolio.transaction do
  (1..30).each do |i|
    Portfolio.create(title: "ДЛЯ ГЛАВНОЙ СТРАНИЦЫ ", title_o: " Это «лицо» Вашей компании в Интернете. Текст для главной - основной продающий инструмент Вашей компании. Здесь должна быть размещена самая важная информация, которая поможет наладить контакт с потенциальным клиентом - интригующие факты и данные, привлекающие внимание читателя. Это подталкивает клиента к тому, чтобы «прогуляться» по остальным страницам и в конце концов заказать Ваши услуги. #{i} Main Street",
      image_url: "portf.jpg", image_url_pr: "portf-big.png")
  end
end
