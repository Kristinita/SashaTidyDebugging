# @Author: Kristinita
# @Date:   2018-03-06 18:34:40
# @Last Modified by:   Kristinita
# @Last Modified time: 2018-03-06 18:40:25
shopt -s globstar
ok=true
for i in *.html; do
  if tidy -mq "$i"; then
    printf '%s\n' "$i"
  else
    ok=false
  fi
done
"$ok"