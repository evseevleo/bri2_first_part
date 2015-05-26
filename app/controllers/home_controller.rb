# coding: utf-8
class HomeController < ApplicationController
  def index
    @request_headers = request.headers
    @request_data= {
      :host => [request.host, 'Имя хоста'],
      :port => [request.port, "Порт"],
      :protocol => [request.protocol, "Протокол"],
      :method => [request.method, "Метод"],
      :query_string => [request.query_string, "Строка запроса"],
      :remote_ip => [request.remote_ip,"IP Адрес клиента"],
      :media_type => [request.media_type, "Тип запрошенных данных"]
    }
    
  end

end
