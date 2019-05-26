#!/bin/sh
 
for c in $( docker ps --format '{{.Names}}' | grep web ) ; do
    docker exec $c localedef -f UTF-8 -i zh_CN zh_CN
    docker exec $c localedef -f UTF-8 -i cs_CZ cs_CZ
    docker exec $c localedef -f UTF-8 -i fr_FR fr_FR
    docker exec $c localedef -f UTF-8 -i he_IL he_IL
    docker exec $c localedef -f UTF-8 -i it_IT it_IT
    docker exec $c localedef -f UTF-8 -i ko_KR ko_KR
    docker exec $c localedef -f UTF-8 -i ja_JP ja_JP
    docker exec $c localedef -f UTF-8 -i nb_NO nb_NO
    docker exec $c localedef -f UTF-8 -i pl_PL pl_PL
    docker exec $c localedef -f UTF-8 -i pt_BR pt_BR
    docker exec $c localedef -f UTF-8 -i pt_PT pt_PT
    docker exec $c localedef -f UTF-8 -i ru_RU ru_RU
    docker exec $c localedef -f UTF-8 -i sk_SK sk_SK
    docker exec $c localedef -f UTF-8 -i tr_TR tr_TR
    docker exec $c localedef -f UTF-8 -i uk_UA uk_UA
    docker exec $c apachectl -k graceful
done