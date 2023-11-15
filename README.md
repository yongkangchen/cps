# cps
Enhance the `gh copilot suggest -t shell` to execute the command.


<img width="525" alt="Screenshot 2023-11-15 at 3 48 38 PM" src="https://github.com/yongkangchen/cps/assets/704762/31cde106-9a16-4342-baf2-fc5f1c651a48">


### Requirements:
see: https://docs.github.com/en/copilot/github-copilot-in-the-cli/using-github-copilot-in-the-cli

### Installation:
- download https://raw.githubusercontent.com/yongkangchen/cps/main/cps
- chmod +x cps
- sudo mv cps /usr/loca/bin

### Examples:
```

  $ cps "Kill processes holding onto deleted files"
  > sudo lsof | grep deleted | awk '{print $2}' | uniq | xargs kill -9
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
