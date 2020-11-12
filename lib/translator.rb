
require 'yaml'
require 'pry'

def load_library(path)
final_hash = {}
YAML.load_file(path).each do |key, value|
  binding.pry 
end
final_hash
end

def get_japanese_emoticon(path, emoticon)

end

def get_english_meaning(path, emoticon)

end
