if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then                                                                                           
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

echo $OS;

if [ $OS=='Mac' ]; then
				git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
ZPLUG=`brew list | grep zplug`
	if [ ${ZPLUG} != "zplug" ]; then
					brew install zplug
	fi
elif [ $OS=='Linux' ]; then
				git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

else
				exit 1
fi
