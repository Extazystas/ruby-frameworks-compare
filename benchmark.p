 # output as png image
 set terminal png
 set term png size 1000, 800

 # save file to "benchmark.png"
 set output "espresso_all.png"

 # graph a title
 set title "Espresso"

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
 plot "data/espresso_slim_mysql.tsv" using 10 smooth sbezier with lines title 'Views (Slim) + MySQL (Sequel): 3.732 seconds', \
      "data/espresso_mysql.tsv" using 10 smooth sbezier with lines title 'MySQL (Sequel): 3.658 seconds', \
      "data/espresso_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim): 2.903 seconds', \
      "data/espresso.tsv" using 10 smooth sbezier with lines title 'No Views and DB: 2.455 seconds'
