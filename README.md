# cps
Enhance the `gh copilot suggest -t shell` to execute the command.

<img width="559" alt="Screenshot 2023-11-15 at 3 50 04 PM" src="https://github.com/yongkangchen/cps/assets/704762/e405dd64-4989-4f09-8028-1b39a55c9631">



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
