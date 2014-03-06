 # output as png image
 set terminal png

 # save file to "benchmark.png"
 set output "benchmark.png"

 # graph a title
 set title "Webrick: MySQL (Sequel)\n Time taken for tests: 3.931 seconds"

 # nicer aspect ratio for image size
 set size 1,0.7

 # y-axis grid
 set grid y

 # x-axis label
 set xlabel "request"

 # y-axis label
 set ylabel "response time (ms)"

 # plot data from "foo.tsv" using column 9 with smooth sbezier lines
 plot "data/webrick_mysql.tsv" using 10 smooth sbezier with lines title ''
