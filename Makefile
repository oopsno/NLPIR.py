GITRAW=https://raw.githubusercontent.com/NLPIR-team/NLPIR/master/NLPIR%20SDK
NLPIR_H=nlpir/ictclas/NLPIR.h
NLPIR_PY=nlpir/ictclas/const.py

ictclas-header: get-raw
	awk -f scripts/gen-ictclas-header.awk ${NLPIR_H} > ${NLPIR_PY}

get-raw:
	curl ${GITRAW}/NLPIR-ICTCLAS/include/NLPIR.h | iconv -f GBK -t UTF-8 > ${NLPIR_H}
