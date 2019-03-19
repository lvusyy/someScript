for i in `docker images|awk 'NR>1{print $1":"$2}'`;do if [[ $i == 192*   ]];then continue;fi; docker tag $i 192.168.1.10:5000/$i ;docker push 192.168.1.10:5000/$i;done
