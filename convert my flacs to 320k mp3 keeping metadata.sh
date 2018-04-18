for i in *.flac;
  do name=`echo $i | cut -d'.' -f1`;
  ffmpeg -i "$i" -ab 320k -map_metadata 0 -id3v2_version 3 "${name}.mp3";
done
rm *.flac # yes

