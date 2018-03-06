# @Author: Kristinita
# @Date:   2018-03-06 18:57:19
# @Last Modified by:   Kristinita
# @Last Modified time: 2018-03-06 19:10:04
for i in *.html;
	do tidy -mq --show-errors 0 --show-warnings 0 $i
done
true