 # output as png image
 set terminal png
 set term png size 1000, 800

 # save file to "benchmark.png"
 set output "rails_all.png"

 # graph a title
 set title "rails"

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
 plot "data/rails_mysql_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim) + MySQL (Sequel): 2.664 seconds', \
      "data/rails_mysql.tsv" using 10 smooth sbezier with lines title 'MySQL (Sequel): 2.231 seconds', \
      "data/rails_slim.tsv" using 10 smooth sbezier with lines title 'Views (Slim): 1.563 seconds', \
      "data/rails.tsv" using 10 smooth sbezier with lines title 'No Views and DB: 1.194 seconds'
