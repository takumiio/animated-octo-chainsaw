FROM ubuntu:16.10

RUN 	apt-get update && \
	apt-get upgrade -y && \
	apt-get install curl tmux vim ruby git build-essential -y && \
	curl https://raw.githubusercontent.com/takumiio/psychic-octo-barnacle/master/.vimrc> ~/.vimrc && \
	curl https://raw.githubusercontent.com/takumiio/psychic-octo-barnacle/master/.tmux.conf > ~/.tmux.conf && \
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && \
	sh ./install.sh
