#require 'nkf'
require 'csv'

path = ARGV[0]

=begin
csvline = CSV.read(path, encoding: "BOM|UTF-8")
#csvline = CSV.read(path)
csvline.each do |rows|
  print "row  0: " + rows[0].to_s
  print "row  1: " + rows[1].to_s
  print "row  2: " + rows[2].to_s
  print "row  3: " + rows[3].to_s
  print "row  4: " + rows[4].to_s
  print "row  5: " + rows[5].to_s
  print "row  6: " + rows[6].to_s
  print "row  7: " + rows[7].to_s
  print "row  8: " + rows[8].to_s
  print "row  9: " + rows[9].to_s
  print "row 10: " + rows[10].to_s
  print "row 11: " + rows[11].to_s
  print "row 12: " + rows[12].to_s
  print "row 13: " + rows[13].to_s
  print "row 14: " + rows[14].to_s
  print "row 15: " + rows[15].to_s
  print "row 16: " + rows[16].to_s
  print "row 17: " + rows[17].to_s
  print "row 18: " + rows[18].to_s
  print "row 19: " + rows[19].to_s
  print "row 20: " + rows[20].to_s
  print "row 21: " + rows[21].to_s
  print "row 22: " + rows[22].to_s
  print "row 23: " + rows[23].to_s
end

__END__
#encoded_sheet = CSV.parse(NKF::nkf('-w',File.read(path)))

=end

table = CSV.table('C:\rails\data\区域データ.csv')

p table.headers

# 区域番号,分割記号,条,丁目,番,号,番地,アパート・MS名称,部屋番号,会社名称,世帯名称,よみがな,電話番号,訪問区分,訪問可能曜日区分,訪問可能時間区分,更新日時,更新者,記録日付,コメント,削除区分,削除日付,座標
# areanumber,spilitmark,jyou,cyoume,ban,gou,banchi,AP,roomnumber,officename,householdname,kana,phone,visit,visitday,visittime,updated,vpname,vpdate,comment,deleted,deletedate,point

# one = csv[1] #行を指定する場合
# puts one.class # => CSV::Row
# puts one # => 20:10,GOODNIGHT,miki
# puts one[:time] # => 20:10

table.each do |rows|

p  rows[:areanumber]
p  rows[:spilitmark]
p  rows[:jyou]
p  rows[:cyoume]
p  rows[:ban]
p  rows[:gou]
p  rows[:banchi]
p  rows[:AP]
p  rows[:roomnumber]
p  rows[:officename]
p  rows[:householdname]
p  rows[:kana]
p  rows[:phone]
p  rows[:visit]
p  rows[:visitday]
p  rows[:visittime]
p  rows[:updated]
p  rows[:vpname]
p  rows[:vpdate]
p  rows[:comment]
p  rows[:deleted]
p  rows[:deletedate]
p  rows[:point]



end

=begin

csvline = CSV.read(path)
csvline.each do |rows|
  result = []
# 0.new areacard number
  case rows[2]
  when "6"
    result <<  "A" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "7"
    result <<  "B" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "8"
    result <<  "C" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "9"
    result <<  "D" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "10"
    result <<  "E" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "11"
    result <<  "F" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  when "12"
    result <<  "G" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  else
    result <<  "H" + ("%02d" % rows[3]) + ("%02d" % rows[4])
  end
# 1.gou / banchi
  gou = ""
  gou = (rows[5] == "") ? "0000" : ("%04d" % rows[5])
  gou = (rows[6] == "") ? "Unknown" : ("%04d" % rows[6]) if gou == "0000"
  result << gou
# 2.personal area
  result << "No"
# 3.assign ministrator
  result << "Unknown"
# 4.assign limit
  result << "None"
# 5.old arecard number
  result << "%01d" % rows[0] + rows[1]
# 6.building
  result << rows[7]
# 7.room number
  result << rows[8]
# 8.Unauthorized
  result << rows[13]
# 9.service style
  result << (rows[10] == nil) ? "Normal" : "Business"
# 10.office name
  result << rows[9]
# 11.firstname
  result << rows[10]
# 12.lastname
  result << rows[10]
# 13.setai kana
  result << rows[11]
# 14.living
  result << "Yes"
# 15.phone
  result << rows[12]
# 16.household style
  result << "family"
# 17.gender
  result << "male"
# 18.handicapped
  result << "No"
# 19.visit day
  result << "Sat"
# 20.visit time
  result << "10:00-12:00"
# 21.comment
  result << rows[19]
# 22.tenant
  result << "20180101"
# 23.VPname
  result << rows[17]
# 24.VPdate
  result << rows[18]
# 25.delete sign
  result << rows[20]
# 26.delete date
  result << rows[21]
# 27.zahyou
  result << rows[22]
# output
  p result
end
=end
