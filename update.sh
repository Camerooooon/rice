echo "This script takes config files from your system and moves them here."
read -r -p "This will overrite uncommited changes in this repository. Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
	    echo "Ok :)"
        ;;
    *)
	    echo "Bye then..."
	    exit 0
        ;;
esac
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cp ~/.config/polybar/config $SCRIPT_DIR/polybar -v
cp ~/.config/picom.conf $SCRIPT_DIR/picom -v 
cp ~/.config/nvim/init.vim $SCRIPT_DIR/nvim -v 
cp ~/.config/alacritty/alacritty.yml $SCRIPT_DIR/alacritty -v 

echo "Done updating"

