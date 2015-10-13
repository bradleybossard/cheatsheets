# Chrome Secure Shell

Part of my "one app" i.e. Chrome development workflow, necessary to get all the power of Linux.

## Links
[Chrome Store](https://chrome.google.com/webstore/detail/secure-shell/pnhechapfaindjhompbnflcldabbghjo?hl=en)

[Help Page](https://chromium.googlesource.com/apps/libapps/+/master/nassh/doc/faq.txt)

## Connect to AWS instance from Chrome SSH

### Chrome SSH expects a yourkey and yourkey.pub

    cp ~/.ssh/yourkey.pem ~/.ssh/yourkey                 # Chrome SSH expects a yourkey and yourkey.pub

### Generate a public key from your private

    ssh-keygen -y -f ~/.ssh/yourkey > ~/.ssh/yourkey.pub

### In Chrome SSH, next to identity, click "Import", then navigate to your .ssh directory and select both the keys


## Delete all known hosts

### Open the Javascript console and run

     term_.command.removeAllKnownHosts()

### Ctrl+Alt+W instead of Ctrl+W to switch between views in vim.
