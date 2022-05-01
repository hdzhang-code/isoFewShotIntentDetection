#!/usr/bin/env bash

# echo "count: "
# ls | grep $1 | grep $2 | grep -i $3 | wc | awk '{print $0}'

# echo "result:"
# ls | grep $1 | grep $2 | grep -i $3 | xargs grep $4 | awk '{print $3}'

seed=1
logPattern=report
# logPattern=transfer
# logPattern=eval

# for evaluation
dataPattern=targetDatasetOOS
# dataPattern=targetDatasetbank77
# dataPattern=targetDatasetHINT3
# dataPattern=targetDatasethwu64_publishedPaper

# for report iso
dataPattern=bank77
dataPattern=HINT3
dataPattern=hwu64_publishedPaper

weight=0.0
weight2=0.0
temp=0.05
shot=10

cd ./log/
python ../procLog.py \
    --seed ${seed} \
    --dataPattern ${dataPattern} \
    --logPattern ${logPattern} \
    --weight ${weight}  \
    --temp   ${temp} \
    --shot  ${shot}  \
    --weight2  ${weight2} 
