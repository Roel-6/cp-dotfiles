userinput=$(rofi -dmenu -theme ~/.config/rofi/launchers/type-1/style-3.rasi -theme-str 'entry { placeholder: "Input here :"; }')

notify-send "$userinput"
