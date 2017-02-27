FROM ubuntu:16.10

RUN 	apt-get update && \
	sed -i.bak -e "s%http://us.archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list && \
	apt-get upgrade -y && \
	apt-get install curl tmux vim ruby git build-essential -y && \
	curl https://raw.githubusercontent.com/takumiio/animated-octo-chainsaw/master/.vimrc > ~/.vimrc && \
	curl https://raw.githubusercontent.com/takumiio/animated-octo-chainsaw/master/.tmux.conf > ~/.tmux.conf && \
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && \
	sh ./install.sh
