#!/bin/bash

export ASPERA_SCP_PASS="Xz68YfDe"

STUDY_ID=MTBLS253
file_path=/studies/public/$STUDY_ID
ascp -QT -l 1g fasp-ml@fasp.ebi.ac.uk:$file_path . 

# check that result file exists.
for f in i_Investigation.txt metabolites.txt 's_Oxylipin analyses of chronic hepatitis B.txt' s_mtbls253.txt; do
	if [ ! -f "$STUDY_ID/$f" ]; then
   		echo "Files $f do not exist, failing test."
   		exit 1
	else
		echo $f
	fi
done

rm -rf $STUDY_ID

echo "ASCP downloader runs with test data without error codes, all expected files created."
