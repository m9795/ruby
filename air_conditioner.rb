# roomの値がair_conditionerの値になるまでの処理

input_lines = readlines # キーボード入力後 Ctrl+Dで終了

room = input_lines[0].to_i # 室内温度
air_conditioner = input_lines[1].to_i # エアコンの設定温度

# 上記の温度差
temperature_diff = (room - air_conditioner).abs # .absは絶対値に変換するメソッド

require_time = 0

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
  require_time = 15
elsif temperature_diff >= 10 then
  require_time = 60
end

p require_time
