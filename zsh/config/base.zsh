export PYTHON=$(which python3)
export EDITOR=nvim
export TRASH=~/.local/share/Trash/files

vim() { if [[ $* && -d $* ]] { cd $* && nvim } else { nvim $* } }
rm() {
    for f in $*;
    do
        dir=$TRASH/$(date '+%Y%m%d-%H%M')
        target=$dir/${f##*/}
        mkdir -p $dir
        [ -f $f ] && mv $f $target;
        [ -d $f ] && mv $f $target;
    done
}
docker() {
    case $* in
        restart) sudo docker restart $(sudo docker ps -a | sed 1d | col 1) ;;
        stop) sudo docker stop $(sudo docker ps -a | sed 1d | col 1) ;;
        rm) sudo docker rm $(sudo docker ps -a | sed 1d | col 1) ;;
        rmi) sudo docker rmi $(sudo docker images | sed 1d | col 3) ;;
        ps) sudo docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}" ;;
        *) sudo docker $* ;;
    esac
}
