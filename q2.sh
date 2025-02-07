#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l
#b
sed -n 's/Sherlock/&\n/gp; s/Holmes/&\n/gp' sherlockholmes.txt | wc -l
#c
sed 's/^/Hello:/' sherlockholmes.txt
#d
sed -E 's/[A-Z][a-z]{1,} [A-Z][a-z]{1,}/Lia Korman/g' sherlockholmes.txt
#e
sed -n 's/(/[/g; s/)/]/g; p' sherlockholmes.txt

