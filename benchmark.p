 # output as png image
 set terminal png
 set term png size 1000, 800

 # save file to "benchmark.png"
 set output "all_no_view_no_db.png"

 # graph a title
 set title "Rails, Sinatra, Padrino, Goliath: No Views and DB"

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
 plot "data/rails.tsv" using 10 smooth sbezier with lines title 'Rails: 1.194 seconds', \
      "data/thin.tsv" using 10 smooth sbezier with lines title 'Sinatra(thin): 0.669 seconds', \
      "data/padrino_no_cache.tsv" using 10 smooth sbezier with lines title 'Padrino (no cache): 0.448 seconds', \
      "data/goliath.tsv" using 10 smooth sbezier with lines title 'Goliath: 2.239 seconds'
