# cps
Enhance the `gh copilot suggest -t shell` wrapper by incorporating a prompt feature to execute the command.

### Requirements:
see: https://docs.github.com/en/copilot/github-copilot-in-the-cli/using-github-copilot-in-the-cli

### Installation:
- download https://raw.githubusercontent.com/yongkangchen/cps/main/cps
- chmod +x cps
- sudo mv cps /usr/loca/bin

### Examples:
```
  $ cps "Kill processes holding onto deleted files"
  > fuser -vk /path/to/file
  > Press any button to continue, or n to cancel:
```
```
  $ cps "Test whether there are SSL/TLS issues with github.com"
  > openssl s_client -host github.com -port 443
  > Press any button to continue, or n to cancel:
```
```
  $ cps "Convert SVG to PNG and resize"
  > convert -resize 50% file.svg file.png
  > Press any button to continue, or n to cancel: 
```
