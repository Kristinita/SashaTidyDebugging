# @Author: Kristinita
# @Date:   2018-03-06 18:57:19
# @Last Modified by:   Kristinita
# @Last Modified time: 2018-03-06 18:59:53
for i in *.html;
	do tidy -mq $i
done
true