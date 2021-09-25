require 'sinatra'
# require 'nokogiri'
# require 'rack-mini-profiler'
# require 'stackprof'

class App < Sinatra::Base
  set :environment, :production
  set :logging, false
  set :run, false

  # use Rack::MiniProfiler

  # Rack::MiniProfiler.config.enable_advanced_debugging_tools = true
  # Rack::MiniProfiler.config.snapshots_limit = 20000
  # /battle?pp=profile-gc

  get '/numbers' do
    i = 0
    numbers = []
    while i < 1000 do
      numbers.push((rand()*10_000).round)
      i += 1
    end
    "<html><head><title>Battle</title></head><body><h1>Battle</h1>#{numbers.join(', ')}</body></html>"
  end
end