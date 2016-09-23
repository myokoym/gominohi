#!/bin/sh
# ./generate-sapporo-gomi-csv.sh 2016-2017 20160901 20170930
if [ $# -ne 3 ]; then
  echo "指定された引数は$#個です。" 1>&2
  echo "実行するにはフォルダ名・開始日・終了日の指定が必要です。" 1>&2
  exit 1
fi

echo "folder : $1"
echo "start :$2"
echo "end :$3"

if [ ! -e $1 ]; then
  mkdir $1
fi

echo "地名,センター,燃やせるごみ,枝・葉・草,燃やせないごみ,容器プラ,雑がみ,びん・缶・ペット" >  $1/area_days.csv
echo "中央区"
gominohi g chuo_1 $2 $3 2 >> $1/area_days.csv
gominohi g chuo_2 $2 $3 2 >> $1/area_days.csv
gominohi g chuo_3 $2 $3 3 >> $1/area_days.csv
gominohi g chuo_4 $2 $3 2 >> $1/area_days.csv
gominohi g chuo_5 $2 $3 3 >> $1/area_days.csv
gominohi g chuo_6 $2 $3 2 >> $1/area_days.csv
echo "厚別区"
gominohi g atsubetsu_1 $2 $3 4 >> $1/area_days.csv
gominohi g atsubetsu_2 $2 $3 3 >> $1/area_days.csv
gominohi g atsubetsu_3 $2 $3 3 >> $1/area_days.csv
gominohi g atsubetsu_4 $2 $3 3 >> $1/area_days.csv
echo "白石区"
gominohi g shiroishi_1 $2 $3 3 >> $1/area_days.csv
gominohi g shiroishi_2 $2 $3 3 >> $1/area_days.csv
gominohi g shiroishi_3 $2 $3 4 >> $1/area_days.csv
gominohi g shiroishi_4 $2 $3 3 >> $1/area_days.csv
echo "手稲区"
gominohi g teine_1 $2 $3 2 >> $1/area_days.csv
gominohi g teine_2 $2 $3 1 >> $1/area_days.csv
gominohi g teine_3 $2 $3 1 >> $1/area_days.csv
echo "清田区"
gominohi g kiyota_1 $2 $3 2 >> $1/area_days.csv
gominohi g kiyota_2 $2 $3 3 >> $1/area_days.csv
echo "西区"
gominohi g nishi_1 $2 $3 2 >> $1/area_days.csv
gominohi g nishi_2 $2 $3 1 >> $1/area_days.csv
gominohi g nishi_3 $2 $3 1 >> $1/area_days.csv
gominohi g nishi_4 $2 $3 1 >> $1/area_days.csv
echo "東区"
gominohi g higashi_1 $2 $3 4 >> $1/area_days.csv
gominohi g higashi_2 $2 $3 4 >> $1/area_days.csv
gominohi g higashi_3 $2 $3 1 >> $1/area_days.csv
gominohi g higashi_4 $2 $3 4 >> $1/area_days.csv
gominohi g higashi_5 $2 $3 4 >> $1/area_days.csv
gominohi g higashi_6 $2 $3 1 >> $1/area_days.csv
echo "北区"
gominohi g kita_1 $2 $3 4 >> $1/area_days.csv
gominohi g kita_2 $2 $3 4 >> $1/area_days.csv
gominohi g kita_3 $2 $3 1 >> $1/area_days.csv
gominohi g kita_4 $2 $3 4 >> $1/area_days.csv
gominohi g kita_5 $2 $3 4 >> $1/area_days.csv
gominohi g kita_6 $2 $3 1 >> $1/area_days.csv
echo "南区"
gominohi g minami_1 $2 $3 2 >> $1/area_days.csv
gominohi g minami_2 $2 $3 1 >> $1/area_days.csv
gominohi g minami_3 $2 $3 1 >> $1/area_days.csv
gominohi g minami_4 $2 $3 1 >> $1/area_days.csv
gominohi g minami_5 $2 $3 2 >> $1/area_days.csv
gominohi g minami_6 $2 $3 1 >> $1/area_days.csv
echo "豊平区"
gominohi g toyohira_1 $2 $3 2 >> $1/area_days.csv
gominohi g toyohira_2 $2 $3 2 >> $1/area_days.csv
gominohi g toyohira_3 $2 $3 2 >> $1/area_days.csv
gominohi g toyohira_3 $2 $3 3 >> $1/area_days.csv
gominohi g toyohira_4 $2 $3 2 >> $1/area_days.csv
