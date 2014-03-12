 # output as png image
 set terminal png
 set term png size 1000, 800

 # save file to "benchmark.png"
 set output "all_slim.png"

 # graph a title
 set title "Rails, Sinatra, Padrino, Goliath: Views (Slim)"

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
 plot "data/rails_slim.tsv" using 10 smooth sbezier with lines title 'Rails: 1.563 seconds', \
      "data/thin_slim.tsv" using 10 smooth sbezier with lines title 'Sinatra(thin): 5.209 seconds', \
      "data/padrino_no_cache_slim.tsv" using 10 smooth sbezier with lines title 'Padrino (no cache): 4.220 seconds', \
      "data/goliath_slim.tsv" using 10 smooth sbezier with lines title 'Goliath: 5.770 seconds'
