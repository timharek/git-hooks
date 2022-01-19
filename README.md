# Simple git-hooks

## Features

Easy to use script to create a `post-receive` git-hook for straight forward
deployment. Includes step with submodules.

## Usage

```sh
# 1. Give excecute permission to the script
chmod +x init.sh

# 2. Run the actual script
./init.sh

# 3. Fill in the prompts.
```

Now you should have a generated `post-receive` git-hook called 
`post-receive.generated`. You can now move this to where ever you need it and 
use it as a template.

## Why does this exist?

Every time I need to setup a simple `post-receive` git-hook with (or without)
submodules I've had to look it up because it doesn't make sense that I'd have 
to `cd` into the path and then define my work-tree, but here we are.

Hopefully someone else can find this useful :blush:
