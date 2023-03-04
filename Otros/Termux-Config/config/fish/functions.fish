function sftpp 
  sftp -oPort=$argv[1] hostname@192.168.$argv[2]
end

function sshp
  ssh -p $argv[1] hostname@192.168.$argv[2]
end

function noh
  nohup $argv[1] $argv[2] &
end

# need 1 var enter how extension ogg for example
function tomp3
  mkdir -v "encoded"

  for i in *.$argv[1];
    ffmpeg -i "$i" -acodec libmp3lame -ab 128k -ar 22050 "encoded/$i.mp3"
  end
end

# reduce size from files mp3
function mp3low
  mkdir -v "portable"

  for i in *.mp3 
    lame -q 0 -b 60 -m j $i portable/$i
  end
end
