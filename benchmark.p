 # output as png image
 set terminal png
 set term png size 1000, 1000

 # save file to "benchmark.png"
 set output "goliath_all.png"

 # graph a title
 set title "Goliath"

 # nicer aspect ratio for image size
 set size 1,1

 # y-axis grid
 set grid y

 # x-axis label
 set xlabel "request"

 # y-axis label
 set ylabel "response time (ms)"

 # position of legenda
 set key left top

 # plot data from "foo.tsv" using column 9 with smooth sbezier lines
 plot "data/goliath_mysql_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim) + MySQL (Sequel): 9.628 seconds', \
      "data/goliath_mysql.tsv" using 10 smooth sbezier with lines title 'MySQL (Sequel): 4.124 seconds', \
      "data/goliath_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim): 5.770 seconds', \
      "data/goliath.tsv" using 10 smooth sbezier with lines title 'No Views and DB: 2.239 seconds'
