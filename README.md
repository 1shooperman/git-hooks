# Local git setup
Contains custom git configurations for my local environment.

## Setup
1. Clone this repo. Recommended is `~/.git_templates`
1. Run the install script. Optionally, you can open the install script an run the commands manually.

### Existing repo
```bash
cd your-git-repo
git init
```
## /hooks

### post-merge
Does a bit of branch cleanup after a pull. See https://git-scm.com/docs/githooks#_post_merge

### prepare-commit-msg
Templates my commit messages. See https://git-scm.com/docs/githooks#_prepare_commit_msg

## Testing
I've included a docker-compose.yml file for testing locally. If you want to see what it does:
1. `docker build .`
1. `docker images` to get the image ID
1. `docker run -t -d <IMAGE_ID>` to start a container with the image
1. `docker ps` to get the container name
1. `docker exec -it <CONTAINER NAME> /bin/bash` to get a bash shell
1. `cd /home/foo/.git_templates && ./install.sh` to run the install script
1. `git config -l`

## Dependencies
* Python 3.5+
* bash
