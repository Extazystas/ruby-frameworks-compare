 # output as png image
 set terminal png

 # save file to "benchmark.png"
 set output "benchmark.png"

 # graph a title
 # set title "ab -n 100 -c 10 -g foo.tsv http://google.ru/"
 set title "Without caching: MySQL (Sequel)\n Time taken for tests: 7.729 seconds"

 # nicer aspect ratio for image size
 set size 1,0.7

 # y-axis grid
 set grid y

 # x-axis label
 set xlabel "request"

 # y-axis label
 set ylabel "response time (ms)"

 # plot data from "foo.tsv" using column 9 with smooth sbezier lines
 plot "data/padrino_no_cache_mysql_slim.tsv" using 10 smooth sbezier with lines title ''


# clear
# reset
# set terminal pngcairo
# set output 'foo.png'
# set datafile separator '\t'
# set style fill solid border
# set boxwidth 8 absolute
# set yrange [0:*]
# bin(x) = 10*floor(x/10.0)
# plot 'data/foo.tsv' using (bin($5)):(1) every ::1 smooth frequency with boxes title 'ttime'
# exit
