 # output as png image
 set terminal png
 set term png size 1000, 1000

 # save file to "benchmark.png"
 set output "padrino_no_cache_all.png"

 # graph a title
 set title "Padrino without cache"

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
 plot "data/padrino_no_cache_mysql_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim) + MySQL (Sequel): 7.729 seconds', \
      "data/padrino_no_cache_mysql.tsv" using 10 smooth sbezier with lines title 'MySQL (Sequel): 1.331 seconds', \
      "data/padrino_no_cache_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim): 4.220 seconds', \
      "data/padrino_no_cache.tsv" using 10 smooth sbezier with lines title 'No Views and DB: 0.448 seconds'
