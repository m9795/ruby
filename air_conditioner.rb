# roomの値がair_conditionerの値になるまでの処理

input_lines = readlines # キーボード入力後 Ctrl+Dで終了

room = input_lines[0].to_i # 室内温度
air_conditioner = input_lines[1].to_i # エアコンの設定温度
air_flow = input_lines[2].to_i # エアコンの設定風量
unless air_flow == 1 || air_flow == 2 || air_flow == 3
  p "風量の値は1~3にしてください"
  exit
end

# 上記の温度差
temperature_diff = (room - air_conditioner).abs # .absは絶対値に変換するメソッド

require_time = 0

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff >= 10 then
  require_time = 60
end

if air_flow == 1
  time = require_time
elsif air_flow == 2
  time = require_time - 5
else
  time = require_time - 10
end



# if temperature_diff < 5
#   require_time = 15
# elsif temperature_diff >= 5 && temperature_diff < 10 then
#   require_time = 15
# elsif temperature_diff >= 10 then
#   require_time = 60
# end

p time
