# encoding: utf-8
require 'net/http'
require 'benchmark'

def request url, tempo
  begin
    uri = URI.parse url
    uri.path = '/index.html' if uri.path.empty?
    cont = 0
    loop do
      rtt = "%.6f" % Benchmark.measure { Net::HTTP.get uri.host, uri.path }.real
      puts "#{cont += 1}a requisição enviada (RTT = #{rtt} s)."
      sleep tempo
    end
  rescue Interrupt
    puts "Requisições encerradas."
  end
end

url = ARGV[0].to_s
tempo = ARGV[1].to_i

request url, tempo
