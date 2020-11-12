
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    emoticons["get_emoticon"][english] = japanese
    emoticons["get_meaning"][japanese] = meaning
  end
  emoticons
end

def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
