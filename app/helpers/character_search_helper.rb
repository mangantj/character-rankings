module CharacterSearchHelper
  def parse_color(number)
    color = case number
            when number..19.99 then "#666"
            when number..49.99 then "#1eff00"
            when number..74.99 then "#0070ff"
            when number..94.99 then "#a335ee"
            else 
              "#ff8000"
            end
    color
  end
end
