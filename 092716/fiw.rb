
n_i_w = { 0 => "Zero", 1 => "One", 2 => "Two", 3 =>"Three", 4 => "Four", 5 => "Five", 6 => "Six", 7 => "Seven", 8 => "Eight", 9 =>"Nine", 10 => "Ten", 11 => "Eleven", 12 => "Twelve", 13 => "Thirteen", 14 => "Fourteen", 15 => "Fiveteen", 16 => "Sixteen", 17 => "Seventeen", 18 => "Eighteen", 19 => "Nineteen", 20 => "Twenty", 21 => "Twenty One", 22 => "Twenty Two", 23 => "Twenty Three", 24 => "Twenty Four", 25 => "Twenty Five", 26 => "Twenty Six", 27 => "Twenty Seven", 28 => "Twenty Eight", 29 => "Twenty Nine", 30 => "Thirty", 31 => "Thirty One", 32 => "Thirty Two", 33 => "Thirty Three", 34 => "Thirty Four", 35 => "Thirty Five", 36 => "Thirty Six", 37 => "Thirty Seven", 38 => "Thirty Eight", 39 => "Thirty Nine", 40 => "Fourty", 41 => "Fourty One", 42 => "Fourty Two", 43 => "Fourty Three", 44 => "Fourty Four", 45 => "Fourty Five", 46 => "Fourty Six", 47 => "Fourty Seven", 48 => "Fourty Eight", 49 => "Fourty Nine", 50 => "Fifty", 51 => "Fifty One", 52 => "Fifty Two", 53 => "Fifty Three", 54 => "Fifty Four", 55 => "Fifty Five", 56 => "Fifty Six", 57 => "Fifty Seven", 58 => "Fifty Eight", 59 => "Fifty Nine", 60 => "Sixty", 61 => "Sixty One", 62 => "Sixty Two", 63 => "Sixty Three", 64 => "Sixty Four", 65 => "Sixty Five", 66 => "Sixty Six", 67 => "Sixty Seven", 68 => "Sixty Eight", 69 => "Sixty Nine", 70 => "Seventy", 71 => "Seventy One", 72 => "Seventy Two",73 => "Seventy Three",74 => "Seventy Four",75 => "Seventy Five",76 => "Seventy Six",77 => "Seventy Seven",78 => "Seventy Eight",79 => "Seventy Nine", 80 => "Eighty",  81 => "Eighty One", 82 => "Eighty Two",83 => "Eighty Three", 84 => "Eighty Four", 85 => "Eighty Five", 86 => "Eighty Six", 87 => "Eighty Seven", 88 => "Eighty Eight", 89 => "Eighty Nine", 90 => "Ninety", 91 => "Ninety One", 92 => "Ninety Two", 93 => "Ninety Three", 94 => "Ninety Four", 95 => "Ninety Five", 96 => "Ninety Six", 97 => "Ninety Seven", 98 => "Ninety Eight", 99 => "Ninety Nine", "&" => "and", 100 => "Hundred", 1000 => "Thousand", 1000000 => "Million", 1000000000 => "Trillion", "-" => "Negative"}

puts "Please enter your number: "
num = []
user_input = gets.chomp.split("")

if user_input[0] == "-"
  negative_dig = user_input[1..-1].map(&:to_i)
   two_numerals = negative_dig.first(2).join.to_i
last_two = negative_dig.last(2).join.to_i
t_next = [negative_dig[1],negative_dig[2]].join.to_i
t_1_m_next = [negative_dig[2],negative_dig[3]].join.to_i
t_2_m_next = [negative_dig[3],negative_dig[4]].join.to_i
t_3_next = [negative_dig[4],negative_dig[5]].join.to_i
t_4_next = [negative_dig[5],negative_dig[6]].join.to_i
convertor = []

case negative_dig.length == 1
		convertor.push([n_i_w["-"], n_i_w[negative_dig[0]]].join(" "))	
	when negative_dig.length == 2
		convertor.push([n_i_w["-"], n_i_w[two_numerals]].join(" "))
	when negative_dig.length == 3	
		convertor.push([n_i_w["-"], n_i_w[negative_dig[0]], n_i_w[100], n_i_w["&"], n_i_w[last_two]].join(" "))
	when negative_dig.length == 4	
		convertor.push ([n_i_w["-"], n_i_w[negative_dig[0]], n_i_w[1000], n_i_w[negative_dig[1]], n_i_w[100], n_i_w["&"], n_i_w[last_two]].join(" "))
	when negative_dig.length == 5	
		convertor.push([ n_i_w["-"], n_i_w[two_numerals], n_i_w[1000], n_i_w[negative_dig[2]], n_i_w[100], n_i_w["&"], n_i_w[last_two]].join(" "))				
	when negative_dig.length == 6
	      convertor.push([n_i_w["-"],n_i_w[negative_dig[0]],n_i_w[100],n_i_w["&"],n_i_w[t_next],n_i_w[1000],n_i_w[negative_dig[3]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))	
	when negative_dig.length == 7
		convertor.push ([n_i_w["-"],n_i_w[negative_dig[0]],n_i_w[1000000],n_i_w[negative_dig[1]],n_i_w[100],n_i_w["&"],n_i_w[t_1_m_next],n_i_w[1000],n_i_w[negative_dig[4]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))
	when negative_dig.length == 8
		 convertor.push([n_i_w["-"],n_i_w[two_numerals],n_i_w[1000000],n_i_w[negative_dig[2]],n_i_w[100],n_i_w["&"],n_i_w[t_2_m_next],n_i_w[1000],n_i_w[negative_dig[5]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" ")) 
	when negative_dig.length == 9
		convertor.push([n_i_w["-"],n_i_w[negative_dig[0]],n_i_w[100],n_i_w["&"],n_i_w[t_next],n_i_w[1000000],n_i_w[negative_dig[3]],n_i_w[100],n_i_w["&"],n_i_w[t_3_next],n_i_w[1000],n_i_w[negative_dig[6]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))	 	      		 	      
	when negative_dig.length == 10
		convertor.push([n_i_w["-"],n_i_w[negative_dig[0]],n_i_w[1000000000],n_i_w[negative_dig[1]],n_i_w[100],n_i_w["&"],n_i_w[t_1_m_next],n_i_w[1000000],n_i_w[negative_dig[4]],n_i_w[100],n_i_w["&"],n_i_w[t_4_next],n_i_w[1000],n_i_w[negative_dig[7]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))
end		
puts convertor 
end

if user_input[0] != "-"
   num = user_input.map(&:to_i)
   two_numerals = num.first(2).join.to_i
last_two = num.last(2).join.to_i
t_next = [num[1],num[2]].join.to_i
t_1_m_next = [num[2],num[3]].join.to_i
t_2_m_next = [num[3],num[4]].join.to_i
t_3_next = [num[4],num[5]].join.to_i
t_4_next = [num[5],num[6]].join.to_i
convertor = []

case num.length == 1
		convertor.push([n_i_w[num[0]]])	
	when num.length == 2
		convertor.push([n_i_w[two_numerals]])
	when num.length == 3	
		 convertor.push([n_i_w[num[0]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))
	when num.length == 4	
		convertor.push ([n_i_w[num[0]],n_i_w[1000],n_i_w[num[1]],n_i_w[100], n_i_w["&"],n_i_w[last_two]].join(" "))
	when num.length == 5	
				convertor.push([n_i_w[two_numerals],n_i_w[1000],n_i_w[num[2]],n_i_w[100], n_i_w["&"],n_i_w[last_two]].join(" "))				
	when num.length == 6
	      convertor.push([n_i_w[num[0]],n_i_w[100],n_i_w["&"],n_i_w[t_next],n_i_w[1000],n_i_w[num[3]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))	
	when num.length == 7
		convertor.push ([n_i_w[num[0]],n_i_w[1000000],n_i_w[num[1]],n_i_w[100],n_i_w["&"],n_i_w[t_1_m_next],n_i_w[1000],n_i_w[num[4]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))
	when num.length == 8
		 convertor.push([n_i_w[two_numerals],n_i_w[1000000],n_i_w[num[2]],n_i_w[100],n_i_w["&"],n_i_w[t_2_m_next],n_i_w[1000],n_i_w[num[5]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" ")) 
	when num.length == 9
		convertor.push([n_i_w[num[0]],n_i_w[100],n_i_w["&"],n_i_w[t_next],n_i_w[1000000],n_i_w[num[3]],n_i_w[100],n_i_w["&"],n_i_w[t_3_next],n_i_w[1000],n_i_w[num[6]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))	 	      		 	      
	when num.length == 10
		convertor.push([n_i_w[num[0]],n_i_w[1000000000],n_i_w[num[1]],n_i_w[100],n_i_w["&"],n_i_w[t_1_m_next],n_i_w[1000000],n_i_w[num[4]],n_i_w[100],n_i_w["&"],n_i_w[t_4_next],n_i_w[1000],n_i_w[num[7]],n_i_w[100],n_i_w["&"],n_i_w[last_two]].join(" "))
end		
puts convertor
end

