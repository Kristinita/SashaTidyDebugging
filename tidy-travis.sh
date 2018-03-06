# @Author: Kristinita
# @Date:   2018-03-06 18:34:40
# @Last Modified by:   Kristinita
# @Last Modified time: 2018-03-06 18:53:58
shopt -s globstar
ok=true
for i in *.html; do
  if tidy -mq $i; then
    echo $i valid!
  else
    ok=false
    echo $i not valid!
  fi
done
$ok