#/bin/sh

LINK_OR_DIR=/www/Dashboard

if [ ! -d "$LINK_OR_DIR" ]; then 
  git clone https://github.com/causefx/Organizr.git $LINK_OR_DIR
fi