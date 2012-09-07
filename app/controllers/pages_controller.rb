#!/bin/env ruby
## encoding: utf-8
#
class PagesController < ApplicationController
  def home
  	@title = 'Главная страница'
  end

  def contact
  	@title = 'Контакты'
  end

  def clients
  	@title = 'Клиенты'
  end

  def portf
  	@title = ' Портфулио'
  end
  def about
  	@title = 'О компании'
  end
end
