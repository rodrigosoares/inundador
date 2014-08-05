# encoding: utf-8
require 'net/http'

def request url, tempo
  begin
    uri = URI.parse url
    uri.path = '/index.html' if uri.path.empty?
    cont = 0
    loop do
      Net::HTTP.get uri.host, uri.path
      puts "#{cont += 1}a requisição enviada."
      sleep tempo
    end
  rescue Interrupt
    puts "Requisições encerradas."
  end
end

url = ARGV[0].to_s
tempo = ARGV[1].to_i

request url, tempo
