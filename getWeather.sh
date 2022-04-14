#! /bin/zsh

city=$1

echo ">>>>> Here is the forecast for ${city}!"
eval "curl http://wttr.in/${city}"
