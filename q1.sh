#a
awk 'END {print NR}' aliceinwonderland.txt
#works also: awk '{print $0}' aliceinwonderland.txt | wc -l

#b
awk '{for(i=2;i<NF;i++) if ($i=="Alice") count++} END {print count}' aliceinwonderland.txt

#c
awk '{OFS=" ";for (i=2; i<NF; i++) words[$i]++;} END {for (w in words) if (words[w] == 1) print w;}' aliceinwonderland.txt

#d
awk '{OFS=" ";for (i=2; i<NF; i++) words[$i]++;} END {for (w in words) print words[w], w;}' aliceinwonderland.txt | sort -h | tail -5

#e
awk '{OFS=" "; for (i=2; i<NF; i++) {words[$i]++; wordsLength += length($i); sumWords++;}} END {avgLength = wordsLength / sumWords; print avgLength;}' aliceinwonderland.txt
