require "./method"

plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000}
]

# 旅行プランの表示
disp(plans)
# 旅行プランの選択
chosen_plan = select_plan(plans)
# 人数の確定
decide_num_of_people = choose_people_num(chosen_plan)
# 合計金額
calculate_travel_price(chosen_plan, decide_num_of_people)
