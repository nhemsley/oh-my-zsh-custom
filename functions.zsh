#http://superuser.com/questions/181517/how-to-execute-a-command-whenever-a-file-changes
function watch_exec() {
  cmd=$1
  while inotifywait -e close_write $1; do ./$1; done
}
