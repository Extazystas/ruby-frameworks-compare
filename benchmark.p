 # output as png image
 set terminal png
 set term png size 1000, 800

 # save file to "benchmark.png"
 set output "benchmark_test.png"

 # graph a title
 set title "Unicorn"

 # nicer aspect ratio for image size
 set size 1,1

 # y-axis grid
 set grid y

 # x-axis label
 set xlabel "request"

 # y-axis label
 set ylabel "response time (ms)"

 # plot data from "foo.tsv" using column 9 with smooth sbezier lines
 plot "data/unicorn_slim_mysql.tsv" using 10 smooth sbezier with lines title 'Views (Slim) + MySQL (Sequel): 7.452 seconds', \
      "data/unicorn_mysql.tsv" using 10 smooth sbezier with lines title 'MySQL (Sequel): 1.737 seconds', \
      "data/unicorn_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim): 3.738 seconds', \
      "data/unicorn.tsv" using 10 smooth sbezier with lines title 'No Views and DB: 0.708 seconds'
