for i in 0 1 2 3 4 5 6 7 8 9 
do
  for j in 0 1 2 3 4 5 6 7 8 9
  do
    docker run -d -p 90$i$j:8080 cucho 
  done
 done
