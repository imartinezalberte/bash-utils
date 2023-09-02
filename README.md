# Bash library

This is a bash library whose purpose is make my life as a developer, easier.

Instead of rewriting everything from scratch every time I have to create a new script or try to link every single library I create or want, I just place them in the same folder and added it to the PATH variable.

Serve yourself.

`make install` will copy all the source libraries to the folder `$HOME/.local/lib/bash`

After that, you have to aggregate the path to the PATH variable, adding the following lines to the ~/.bashrc initial script

```sh
export PATH="$PATH:$HOME/.local/lib/bash"
source colors.sh
```
