file1=${1? Error: please entre the exactly name of the firs}
file2=${2? Error: please entre the ecactly name of the second file}
file3=${3? Error: please entre the ecactly name of the third file}
cut -f1 $file1 >file_1 
sort file_1 >f1
cut -f1 $file2 >file_2 
sort file_2 >f2
cut -f1 $file3 >file_3 
sort file_3 >f3
comm -1 -2 f1 f2 >common1
comm -1 -2 f3 common1 | sort -u | wc -l
