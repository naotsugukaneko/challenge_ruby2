# 旅行プランの表示
def disp(plans)
  puts "旅行プランを選択してください。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行(#{plan[:price]}円)"
  end
  puts ""
end

# 旅行プランの選択
def select_plan(plans)
  while true
    print "プランの番号を選択 > "
    plan_num = gets.to_i
    break if (1..3).include?(plan_num)
      puts "1~3を選択して下さい。"
  end
  plans[plan_num - 1]
end

# 人数の確定
def choose_people_num(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。"
  puts ""
  puts "何名で予約されますか？"
  while true
    print "人数を入力 > "
    decided_num_of_people = gets.to_i
    break if decided_num_of_people >= 1
      puts "1名以上を選択して下さい。"
  end
  decided_num_of_people
end

# 合計金額
def calculate_travel_price(chosen_plan, decided_num_of_people)
  puts ""
  puts "#{decided_num_of_people}名ですね。"
  total_price = decided_num_of_people * chosen_plan[:price]
  if decided_num_of_people >= 5
    puts "5名以上ですので10％割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end