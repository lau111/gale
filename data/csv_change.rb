=begin
require 'csv'

path = ARGV[0]

# Shift-JIS形式で読み込んだCSVファイルを、UTF-8形式に変換した上でCSVにパースする。
mod_ary = CSV.parse(File.read(path,encoding: 'Shift-JIS').encode("UTF-8",:invalid => :replace))

# 各セルの値を持つ２次元配列を表示
mod_ary.each do |str|
  p str
end
=end
require 'nkf'
require 'csv'

path = ARGV[0]
encoded_sheet = CSV.parse(NKF::nkf('-w',File.read(path)))

encoded_sheet.each do |str|
  print str
end
