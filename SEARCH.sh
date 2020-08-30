chromosome=${1? Error: please entre chr in case you search in all chromosomes or entre chrN in case you search in an exactly chromosom}
file=${2? Error: please entre the exactly name of file that you search in}
feature=${3? Error: please entre name of feature which must be gene or chromosome or transcript or + or - }
if [ $feature == "gene" ]
then
grep -i $chromosome $file | cut -f1 | sort -u | wc -l
elif [ $feature == "transcript" ]
then
grep -i $chromosome $file | cut -f2 | sort -u | wc -l
elif [ $feature == "chromosome" ]
then
grep -i $chromosome $file | cut -f3 | sort -u | wc -l
elif [ $feature == "-" ]
then
grep -i $chromosome $file | cut -f1,4 | grep "-" | sort -u | wc -l
elif [ $feature == "+" ]
then
grep -i $chromosome $file | cut -f1,4 | grep "+" | sort -u | wc -l
else
echo Go!
fi

	
