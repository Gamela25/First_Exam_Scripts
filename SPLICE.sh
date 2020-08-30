file=${1? Error: please entre the exactly name of file}
splicenumber=${2? Error: please entre number of splices}
cut -f1 $file >transcripts
sort transcripts >Transcripts
if [ splicenumber == "1" ]
then
uniq -c Transcripts | grep "1 " | wc -l
elif [ splicenumber != "1" ]
then
uniq -c Transcripts | grep -v "1 " | wc -l
else
echo go!
fi

