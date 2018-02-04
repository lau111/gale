#require 'nkf'
require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin

   #
   #  Model Name => Areanumber
   #      Field Name =>               headsym : string
   #                              headsymname : string
   #

# Areanumber Initial Setting
Areanumber.create(headsym: 'A', headsymname: '06Jyou')
Areanumber.create(headsym: 'B', headsymname: '07Jyou')
Areanumber.create(headsym: 'C', headsymname: '08Jyou')
Areanumber.create(headsym: 'D', headsymname: '09Jyou')
Areanumber.create(headsym: 'E', headsymname: '10Jyou')
Areanumber.create(headsym: 'F', headsymname: '11Jyou')
Areanumber.create(headsym: 'G', headsymname: '12Jyou')
Areanumber.create(headsym: 'H', headsymname: '00Shinkotoni Chou')

   #
   #  Model Name => areacard
   #      Field Name =>            cardnumber : string
   #                                  cardmin : string
   #                                  cardmax : string
   #

# Areacard Initial Setting
Areacard.create(cardnumber: 'A0000', cardmin: '02', cardmax: '17')
Areacard.create(cardnumber: 'B0000', cardmin: '02', cardmax: '17')
Areacard.create(cardnumber: 'C0000', cardmin: '02', cardmax: '16')
Areacard.create(cardnumber: 'D0000', cardmin: '02', cardmax: '16')
Areacard.create(cardnumber: 'E0000', cardmin: '02', cardmax: '17')
Areacard.create(cardnumber: 'F0000', cardmin: '02', cardmax: '17')
Areacard.create(cardnumber: 'G0000', cardmin: '02', cardmax: '17')
Areacard.create(cardnumber: 'H0000', cardmin: '01', cardmax: '04')

minmax = []
minmax << ["A",2,8]       #  6 Jyou  2 Cyoume 1 Ban ～  8 Ban
minmax << ["A",3,5]       #  6 Jyou  3 Cyoume 1 Ban ～  5 Ban
minmax << ["A",4,3]       #  6 Jyou  4 Cyoume 1 Ban ～  3 Ban
minmax << ["A",5,7]       #  6 Jyou  5 Cyoume 1 Ban ～  7 Ban
minmax << ["A",6,7]       #  6 Jyou  6 Cyoume 1 Ban ～  7 Ban
minmax << ["A",7,7]       #  6 Jyou  7 Cyoume 1 Ban ～  7 Ban
minmax << ["A",8,8]       #  6 Jyou  8 Cyoume 1 Ban ～  8 Ban
minmax << ["A",9,6]       #  6 Jyou  9 Cyoume 1 Ban ～  6 Ban
minmax << ["A",10,5]      #  6 Jyou 10 Cyoume 1 Ban ～  5 Ban
minmax << ["A",11,9]      #  6 Jyou 11 Cyoume 1 Ban ～  9 Ban
minmax << ["A",12,6]      #  6 Jyou 12 Cyoume 1 Ban ～  6 Ban
minmax << ["A",13,6]      #  6 Jyou 13 Cyoume 1 Ban ～  6 Ban
minmax << ["A",14,8]      #  6 Jyou 14 Cyoume 1 Ban ～  8 Ban
minmax << ["A",15,7]      #  6 Jyou 15 Cyoume 1 Ban ～  7 Ban
minmax << ["A",16,7]      #  6 Jyou 16 Cyoume 1 Ban ～  7 Ban
minmax << ["A",17,7]      #  6 Jyou 17 Cyoume 1 Ban ～  7 Ban
minmax << ["B",2,2]       #  7 Jyou  2 Cyoume 1 Ban ～  2 Ban
minmax << ["B",3,1]       #  7 Jyou  3 Cyoume 1 Ban ～  1 Ban
minmax << ["B",4,1]       #  7 Jyou  4 Cyoume 1 Ban ～  1 Ban
minmax << ["B",5,4]       #  7 Jyou  5 Cyoume 1 Ban ～  4 Ban
minmax << ["B",6,6]       #  7 Jyou  6 Cyoume 1 Ban ～  6 Ban
minmax << ["B",7,8]       #  7 Jyou  7 Cyoume 1 Ban ～  8 Ban
minmax << ["B",8,6]       #  7 Jyou  8 Cyoume 1 Ban ～  6 Ban
minmax << ["B",9,8]       #  7 Jyou  9 Cyoume 1 Ban ～  8 Ban
minmax << ["B",10,4]      #  7 Jyou 10 Cyoume 1 Ban ～  4 Ban
minmax << ["B",11,7]      #  7 Jyou 11 Cyoume 1 Ban ～  7 Ban
minmax << ["B",12,4]      #  7 Jyou 12 Cyoume 1 Ban ～  4 Ban
minmax << ["B",13,6]      #  7 Jyou 13 Cyoume 1 Ban ～  6 Ban
minmax << ["B",14,6]      #  7 Jyou 14 Cyoume 1 Ban ～  6 Ban
minmax << ["B",15,8]      #  7 Jyou 15 Cyoume 1 Ban ～  8 Ban
minmax << ["B",16,6]      #  7 Jyou 16 Cyoume 1 Ban ～  6 Ban
minmax << ["B",17,4]      #  7 Jyou 17 Cyoume 1 Ban ～  4 Ban
minmax << ["C",2,4]       #  8 Jyou  2 Cyoume 1 Ban ～  4 Ban
minmax << ["C",3,3]       #  8 Jyou  3 Cyoume 1 Ban ～  3 Ban
minmax << ["C",4,7]       #  8 Jyou  4 Cyoume 1 Ban ～  7 Ban
minmax << ["C",5,8]       #  8 Jyou  5 Cyoume 1 Ban ～  8 Ban
minmax << ["C",6,5]       #  8 Jyou  6 Cyoume 1 Ban ～  5 Ban
minmax << ["C",7,8]       #  8 Jyou  7 Cyoume 1 Ban ～  8 Ban
minmax << ["C",8,6]       #  8 Jyou  8 Cyoume 1 Ban ～  6 Ban
minmax << ["C",9,8]       #  8 Jyou  9 Cyoume 1 Ban ～  8 Ban
minmax << ["C",10,1]      #  8 Jyou 10 Cyoume 1 Ban ～  1 Ban
minmax << ["C",11,5]      #  8 Jyou 11 Cyoume 1 Ban ～  5 Ban
minmax << ["C",12,9]      #  8 Jyou 12 Cyoume 1 Ban ～  9 Ban
minmax << ["C",13,8]      #  8 Jyou 13 Cyoume 1 Ban ～  8 Ban
minmax << ["C",14,9]      #  8 Jyou 14 Cyoume 1 Ban ～  9 Ban
minmax << ["C",15,12]     #  8 Jyou 15 Cyoume 1 Ban ～ 12 Ban
minmax << ["C",16,8]      #  8 Jyou 16 Cyoume 1 Ban ～  8 Ban
minmax << ["D",2,4]       #  9 Jyou  2 Cyoume 1 Ban ～  4 Ban
minmax << ["D",3,8]       #  9 Jyou  3 Cyoume 1 Ban ～  8 Ban
minmax << ["D",4,8]       #  9 Jyou  4 Cyoume 1 Ban ～  8 Ban
minmax << ["D",5,5]       #  9 Jyou  5 Cyoume 1 Ban ～  5 Ban
minmax << ["D",6,9]       #  9 Jyou  6 Cyoume 1 Ban ～  9 Ban
minmax << ["D",7,8]       #  9 Jyou  7 Cyoume 1 Ban ～  8 Ban
minmax << ["D",8,8]       #  9 Jyou  8 Cyoume 1 Ban ～  8 Ban
minmax << ["D",9,9]       #  9 Jyou  9 Cyoume 1 Ban ～  9 Ban
minmax << ["D",10,8]      #  9 Jyou 10 Cyoume 1 Ban ～  8 Ban
minmax << ["D",11,12]     #  9 Jyou 11 Cyoume 1 Ban ～ 12 Ban
minmax << ["D",12,11]     #  9 Jyou 12 Cyoume 1 Ban ～ 11 Ban
minmax << ["D",13,10]     #  9 Jyou 13 Cyoume 1 Ban ～ 10 Ban
minmax << ["D",14,12]     #  9 Jyou 14 Cyoume 1 Ban ～ 12 Ban
minmax << ["D",15,10]     #  9 Jyou 15 Cyoume 1 Ban ～ 10 Ban
minmax << ["D",16,12]     #  9 Jyou 16 Cyoume 1 Ban ～ 12 Ban
minmax << ["E",2,4]       # 10 Jyou  2 Cyoume 1 Ban ～  4 Ban
minmax << ["E",3,6]       # 10 Jyou  3 Cyoume 1 Ban ～  6 Ban
minmax << ["E",4,11]      # 10 Jyou  4 Cyoume 1 Ban ～ 11 Ban
minmax << ["E",5,7]       # 10 Jyou  5 Cyoume 1 Ban ～  7 Ban
minmax << ["E",6,8]       # 10 Jyou  6 Cyoume 1 Ban ～  8 Ban
minmax << ["E",7,8]       # 10 Jyou  7 Cyoume 1 Ban ～  8 Ban
minmax << ["E",8,7]       # 10 Jyou  8 Cyoume 1 Ban ～  7 Ban
minmax << ["E",9,8]       # 10 Jyou  9 Cyoume 1 Ban ～  8 Ban
minmax << ["E",10,2]      # 10 Jyou 10 Cyoume 1 Ban ～  2 Ban
minmax << ["E",11,8]      # 10 Jyou 11 Cyoume 1 Ban ～  8 Ban
minmax << ["E",12,12]     # 10 Jyou 12 Cyoume 1 Ban ～ 12 Ban
minmax << ["E",13,11]     # 10 Jyou 13 Cyoume 1 Ban ～ 11 Ban
minmax << ["E",14,12]     # 10 Jyou 14 Cyoume 1 Ban ～ 12 Ban
minmax << ["E",15,10]     # 10 Jyou 15 Cyoume 1 Ban ～ 10 Ban
minmax << ["E",16,12]     # 10 Jyou 16 Cyoume 1 Ban ～ 12 Ban
minmax << ["E",17,5]      # 10 Jyou 17 Cyoume 1 Ban ～  5 Ban
minmax << ["F",2,4]       # 11 Jyou  2 Cyoume 1 Ban ～  4 Ban
minmax << ["F",3,1]       # 11 Jyou  3 Cyoume 1 Ban ～  1 Ban
minmax << ["F",4,9]       # 11 Jyou  4 Cyoume 1 Ban ～  9 Ban
minmax << ["F",5,2]       # 11 Jyou  5 Cyoume 1 Ban ～  2 Ban
minmax << ["F",6,4]       # 11 Jyou  6 Cyoume 1 Ban ～  4 Ban
minmax << ["F",7,7]       # 11 Jyou  7 Cyoume 1 Ban ～  7 Ban
minmax << ["F",8,8]       # 11 Jyou  8 Cyoume 1 Ban ～  8 Ban
minmax << ["F",9,9]       # 11 Jyou  9 Cyoume 1 Ban ～  9 Ban
minmax << ["F",10,7]      # 11 Jyou 10 Cyoume 1 Ban ～  7 Ban
minmax << ["F",11,12]     # 11 Jyou 11 Cyoume 1 Ban ～ 12 Ban
minmax << ["F",12,10]     # 11 Jyou 12 Cyoume 1 Ban ～ 10 Ban
minmax << ["F",13,10]     # 11 Jyou 13 Cyoume 1 Ban ～ 10 Ban
minmax << ["F",14,10]     # 11 Jyou 14 Cyoume 1 Ban ～ 10 Ban
minmax << ["F",15,5]      # 11 Jyou 15 Cyoume 1 Ban ～  5 Ban
minmax << ["F",16,12]     # 11 Jyou 16 Cyoume 1 Ban ～ 12 Ban
minmax << ["F",17,5]      # 11 Jyou 17 Cyoume 1 Ban ～  5 Ban
minmax << ["G",2,3]       # 12 Jyou  2 Cyoume 1 Ban ～  3 Ban
minmax << ["G",3,6]       # 12 Jyou  3 Cyoume 1 Ban ～  6 Ban
minmax << ["G",4,5]       # 12 Jyou  4 Cyoume 1 Ban ～  5 Ban
minmax << ["G",5,5]       # 12 Jyou  5 Cyoume 1 Ban ～  5 Ban
minmax << ["G",6,8]       # 12 Jyou  6 Cyoume 1 Ban ～  8 Ban
minmax << ["G",7,6]       # 12 Jyou  7 Cyoume 1 Ban ～  6 Ban
minmax << ["G",8,7]       # 12 Jyou  8 Cyoume 1 Ban ～  7 Ban
minmax << ["G",9,5]       # 12 Jyou  9 Cyoume 1 Ban ～  5 Ban
minmax << ["G",10,5]      # 12 Jyou 10 Cyoume 1 Ban ～  5 Ban
minmax << ["G",11,10]     # 12 Jyou 11 Cyoume 1 Ban ～ 10 Ban
minmax << ["G",12,12]     # 12 Jyou 12 Cyoume 1 Ban ～ 12 Ban
minmax << ["G",13,9]      # 12 Jyou 13 Cyoume 1 Ban ～  9 Ban
minmax << ["G",14,12]     # 12 Jyou 14 Cyoume 1 Ban ～ 12 Ban
minmax << ["G",15,8]      # 12 Jyou 15 Cyoume 1 Ban ～  8 Ban
minmax << ["G",16,13]     # 12 Jyou 16 Cyoume 1 Ban ～ 13 Ban
minmax << ["G",17,5]      # 12 Jyou 17 Cyoume 1 Ban ～  5 Ban
minmax << ["H",1,1]       # Shinkotoni Cyou 1
minmax << ["H",2,1]       # Shinkotoni Cyou 2
minmax << ["H",3,1]       # Shinkotoni Cyou 3
minmax << ["H",4,1]       # Shinkotoni Cyou 4

minmax.each do |areanumber, cyoume, ban|
  ban.times do |i|        # Repeat until max of banchi
    Areacard.create(cardnumber: "#{areanumber}#{"%#02d" % cyoume}#{"%#02d" % (i + 1)}", cardmin: '01', cardmax: "#{"%#02d" % ban}")
  end
end

   #  Addreskarismaster
   #  Model Name => addressmaster
   #      Field Name =>            cardnumber : string (0.new areacard number)
   #                             branchnumber : string (1.gou / banchi)
   #                                 psnlarea : string (2.personal area)
   #                          asgnministrator : string (3.assign ministrator)
   #                                asgnlimit : string (4.assign limit)
   #                            oldcardnumber : string (5.old arecard number)
   #                             buildingname : string (6.building)
   #                               roomnumber : string (7.room number)
   #                             unauthorized : string (8.Unauthorized)
   #                                            * date / nil
   #                             servicestyle : string (9.service style)
   #                                            * normal / business / phone / absence / returnvisit
   #                                            / biblestudy / other
   #                               officename : string (10.office name)
   #                                  fstname : string (11.firstname)
   #                                  lstname : string (12.lastname)
   #                                 kananame : string (13.lastname)
   #                                   living : string (14.living)
   #                                            * yes / no
   #                                    phone : string (15.phone)
   #                                household : string (16.household style)
   #                                            * single / family / other / unknown
   #                                   gender : string (17.gender)
   #                                            * male / female / other
   #                              handicapped : string (18.handicapped)
   #                                            * yes / no
   #                                  homeday : string (19.visit day)
   #                                            * Sun / Mon / Tue / Wed / Thu / Fri / Sat
   #                                 hometime : string (20.visit time)
   #                                            * exp.) 10:00 - 14:00
   #                                     memo : text (21.comment)
   #                            newtenantdate : date (22.tenant)
   #                                   vpname : string (23.VPname)
   #                                   vpdate : date (24.VPdate)
   #                                  dltsign : string (25.delete sign)
   #                                  dltdate : date (26.delete date)
   #                                    point : string (27.zahyou)
   #

# addressmaster Initial Setting

#=end

table = CSV.table('C:\rails\data\区域データ.csv')

# p table.headers
# 区域番号,分割記号,条,丁目,番,号,番地,アパート・MS名称,部屋番号,会社名称,世帯名称,よみがな,
# 電話番号,訪問区分,訪問可能曜日区分,訪問可能時間区分,更新日時,更新者,記録日付,
# コメント,削除区分,削除日付,座標
#
# areanumber,spilitmark,jyou,cyoume,ban,gou,banchi,AP,roomnumber,officename,householdname,kana,
# phone,visit,visitday,visittime,updated,vpname,vpdate,
# comment,deleted,deletedate,point
#
# cardnumber:string branchnumber:string psnlarea:string asgnministrator:string
# asgnlimit:string oldcardnumber:string buildingname:string roomnumber:string
# unauthorized:string servicestyle:string officename:string fstname:string lstname:string
# kananame:string living:string phone:string household:string gender:string
# handicapped:string homeday:string hometime:string memo:text newtenantdate:date
# vpname:string vpdate:date dltsign:string dltdate:date point:string
#

# Addreskarismaster.create(cardnumber: "#{r1}", branchnumber: "#{r2}", psnlarea: "#{r3}", asgnministrator: "#{r4}", asgnlimit: "#{r5}", oldcardnumber: "#{r6}", buildingname: "#{r7}", roomnumber: "#{r8}", unauthorized: "#{r9}", servicestyle: "#{r10}", officename: "#{r11}", fstname: "#{r12}", lstname: "#{r13}", kananame: "#{r14}", living: "#{r15}", phone: "#{r16}", household: "#{r17}", gender: "#{r18}", handicapped: "#{r19}", homeday: "#{r20}", hometime: "#{r21}", memo: "#{r22}", newtenantdate: "#{r23}", vpname: "#{r24}", vpdate: "#{r25}", dltsign: "#{r26}", dltdate: "#{r27}", point: "#{r28}")

table.each do |rows|

  case rows[:jyou]
  when 6
    r1 = "A" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 7
    r1 = "B" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 8
    r1 = "C" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 9
    r1 = "D" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 10
    r1 = "E" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 11
    r1 = "F" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  when 12
    r1 = "G" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  else
    r1 = "H" + ("%02d" % rows[:cyoume]) + ("%02d" % rows[:ban])
  end

  gou = ""
  gou = (rows[:gou] == "") ? "0000" : ("%04d" % rows[:gou])
  gou = (rows[:banchi] == "") ? "Unknown" : ("%04d" % rows[:banchi]) if gou == "0000"
  r2 =  gou

  r6 = ("%01d" % rows[:areanumber]) + rows[:spilitmark]

  Addresskarimaster.create(cardnumber: "#{r1}", branchnumber: "#{r2}", psnlarea: "no", asgnministrator: "no", asgnlimit: "Unknown", oldcardnumber: "#{r6}", buildingname: rows[:ap], roomnumber: rows[:roomnumber], unauthorized: rows[:visit], servicestyle: "normal", officename: rows[:officename], fstname: rows[:householdname], lstname: rows[:householdname], kananame: rows[:kana], living: "Yes", phone: rows[:phone], household: "Unknown", gender:"Unknown", handicapped: "Unknown", homeday: "all", hometime: "all", memo: rows[:comment], newtenantdate: "Unknown", vpname: rows[:vpname], vpdate: rows[:vpdate], dltsign: rows[:deleted], dltdate: rows[:deletedate], point: rows[:point])

end
=end
