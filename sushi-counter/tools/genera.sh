#!/bin/zsh
# genera le illustrazioni dei piatti con Astra, usando il nigiri come riferimento di stile
cd ~/conta-sushi
R=img-src/nigiri.png
typeset -A P
P=(
hosomaki "a hosomaki sushi roll piece (seaweed outside, rice ring, cucumber/salmon center) seen from the top-front"
uramaki "an uramaki california roll piece with rice outside sprinkled with sesame and orange tobiko, avocado and crab inside"
temaki "a temaki hand roll cone of nori filled with rice, salmon and avocado"
sashimi "three slices of salmon sashimi fanned out together as one character"
gunkan "a gunkan maki battleship sushi with nori wall and orange salmon roe on top"
onigiri "a triangular onigiri rice ball with a nori strip at the bottom"
edamame "a single edamame green soybean pod with three beans"
gyoza "a pan-fried gyoza dumpling with pleats and golden crispy bottom"
tempura "a fried tempura shrimp with crispy golden batter and red tail"
ramen "a bowl of ramen with noodles, half egg, nori sheet and chashu, with steam"
miso "a small bowl of miso soup with tofu cubes and green onion"
takoyaki "three takoyaki balls with sauce, mayo zigzag and bonito flakes, together as a group character on a small boat tray"
yakitori "a yakitori skewer with grilled chicken pieces glazed with sauce"
mochi "a round pastel pink mochi daifuku"
wakame "a small bowl of green wakame seaweed salad with sesame seeds"
involtino "a Chinese spring roll (involtino primavera), golden and crispy"
raviolo "a Chinese steamed dumpling (xiao long bao) in a small bamboo steamer"
cantonese "a bowl of Cantonese fried rice with peas, egg and ham"
mandorle "a small bowl of Chinese almond chicken (pollo alle mandorle) with almonds"
soia "a small bowl of soy noodles (spaghetti di soia) with vegetables and chopsticks"
bao "a fluffy white steamed bao bun filled with pork and greens"
gelato "a Chinese fried ice cream ball, golden crust, with a drizzle of honey"
nuvole "a pile of three pastel prawn crackers (nuvolette di drago) together as one character"
)
gen(){ ~/.claude/skills/astra/astra-ref.sh "Same exact illustration style as the reference image (kawaii character, tiny dot-eyes face with pink blush and tiny smile, soft flat illustration with subtle grain, thin dark indigo #1F3A5F outline, pastel palette). Draw $2. Centered, square 1:1, generous padding, transparent background, no text, no shadow." img-src/$1.png ~/conta-sushi $R > /dev/null 2>&1; echo "fatto $1"; }
i=0
for k in ${(k)P}; do
  [ -s img-src/$k.png ] && continue
  gen $k "${P[$k]}" &
  i=$((i+1)); if (( i % 6 == 0 )); then wait; fi
done
wait
echo TUTTO
