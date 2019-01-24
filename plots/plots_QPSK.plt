set term png

set xlabel "Nombre de pilotes"
set logscale x 2
set ylabel "BER (%)"
set ytics nomirror

set output "ber32_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 32 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 32 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 32 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 32 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 32 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 32 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber64_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 64 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 64 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 64 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 64 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 64 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 64 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber128_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 128 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 128 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 128 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 128 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 128 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 128 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber256_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 256 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 256 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 256 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 256 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 256 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 256 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber512_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 512 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 512 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 512 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 512 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 512 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 512 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber1024_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 1024 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 1024 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 1024 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 1024 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 1024 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 1024 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle
	
set output "ber2048_QPSK.png"
set title "BER en fonction du nombre de pilotes pour 2048 canaux (QPSK)"

plot "<awk -F '\"*,\"*' '$3 == 10 && $1 == 2048 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 10dB", \
	"<awk -F '\"*,\"*' '$3 == 15 && $1 == 2048 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 15dB", \
	"<awk -F '\"*,\"*' '$3 == 20 && $1 == 2048 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 20dB", \
	"<awk -F '\"*,\"*' '$3 == 25 && $1 == 2048 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 25dB", \
	"<awk -F '\"*,\"*' '$3 == 30 && $1 == 2048 {print $2,$4}' result.csv" u 1:($2*100) w lines t "SNR = 30dB", \
	2 with lines lc "#FF0000" notitle