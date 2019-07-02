#!/bin/bash

PS3='今日課程觀看影片: '
options=("留言追追追" "下課花路米" "老師您哪位")
declare -A u1=([key11]="val11")
declare -A uu=([key1]=${u1["key11"]} [key2]=${u1["key11"]})

for k in ${!uu[*]}
do
    echo "${k}:${uu[$k]}"
done

select opt in "${options[@]}"
do
    case $opt in
        "留言追追追")
            echo "即將播放：留言追追追"
            url=("https://www.youtube.com/watch?v=nHQ9y5emsPM" "https://www.youtube.com/watch?v=Mqoec_bB__U" "https://www.youtube.com/watch?v=q42dPbLZH_0"
 "https://www.youtube.com/watch?v=9Lyj7tqA35U" "https://www.youtube.com/watch?v=ZahPcmlU2tk" "https://www.youtube.com/watch?v=4ThFCTIriUw"
 "https://www.youtube.com/watch?v=PZukn7muJaY" "https://www.youtube.com/watch?v=lVcj0Rurl_I")
            break
            ;;
        "下課花路米")
            echo "即將播放：下課花路米"
            url=("https://www.youtube.com/watch?v=ZrSex0LUR0M" "https://www.youtube.com/watch?v=_LpKXniI-d0" "https://www.youtube.com/watch?v=7HMLums5rU8"
 "https://www.youtube.com/watch?v=MDj4CtgPnQA" "https://www.youtube.com/watch?v=Ay0e3UkyqZg" "https://www.youtube.com/watch?v=JSUhRIDpvbs"
 "https://www.youtube.com/watch?v=a44_GPwGG7g" "https://www.youtube.com/watch?v=1xedKYBykZE")
            break
            ;;
        "老師您哪位")
            url=("https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/95075b6d-4c2b-421f-9418-3d15b4502470"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/90534696-b610-42ad-8720-0cee8d50391e"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/c6f37233-9aa5-4e7e-9d81-8fed0b1bf8e2"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/21f3df91-1d87-4354-aeda-099d756235aa"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/cd4345a5-85ae-45d5-a5bc-86280b8fc540"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/f3d91e37-8d42-49ef-bf6d-6f200fe41741"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/ba75f926-5368-4ef1-a475-b67f03428c00"
 "https://www.ptsplus.tv/season/a11134a9-7524-4c47-9c4a-26f6f8b64f19/episode-type/Episode/3b27f3a9-e65d-436b-b35d-1860d5df0977")
            echo "即將播放：老師您哪位"
            break
            ;;
        *) echo invalid option;;
    esac
done


#declare -a 
if which xdg-open > /dev/null
then
    for ((i=0; i < ${#url[@]}; i++))
    do
        xdg-open ${url[$i]}
    done
elif which gnome-open > dev/null
then
    for ((i=0; i < ${#url[@]}; i++))
    do
        gnome-open ${url[$i]}
    done
fi
