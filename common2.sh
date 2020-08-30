file1=${1? Error: please entre the exactly name of the firs}
file2=${2? Error: please entre the ecactly name of the second file}
cut -f1 $file1 >file_1
sort file_1 >f1
cut -f1 $file2 >file_2
sort file_2 >f2
comm -1 -2 f1 f2 | wc -l

