#!/bin/bash
#

base_dir=~/repos/obsidian

cd $base_dir

last_remote_commit=$(git ls-remote origin HEAD | awk '{print $1}')


function sync ()
{
  if [[ -z $(git log | grep $1) ]]; then
        
    echo "Local repo behind (git pull)" >> $base_dir/sync_logs.md
    date >> $base_dir/sync_logs.md
    echo ""

    git pull
    exit 0

  elif [[ -n $(git diff) ]]; then
    
    echo "Remote repo behind (git push)" >> $base_dir/sync_logs.md
    date >> $base_dir/sync_logs.md
    echo ""
   
   # ira verificar se tem alguma diff, caso tenha ira fazer sync para o remoto
    git add .
    git commit -m "SCRIPT AUTO SYNC"
    git push
    exit 0
  
  else

    echo "Not did anything"
    date >> $base_dir/sync_logs.md 
    exit 0

  fi
}


sync $last_remote_commit
