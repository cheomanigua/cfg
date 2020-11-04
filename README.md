# cfg
dotfile bare git repository

# Bare Git repository

Bare Git repositories are great to keep all your *dotfiles* aka *config files* in a repository. This way, if you reinstall the operating system again, you can clone the bare repository and have all the config files ready.

```
git init --bare $HOME/.cfg
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
config config --local status.showUntrackedFiles no
```

- The first line creates a folder `~/.cfg` which is a Git bare repository that will track our files.
- Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
- We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.

### Usage

For this bare repository, instead of using the command `git`, we use the command `config`.
```
config add .bashrc
config commit -m 'created .bashrc'
config remote add origin https://github.com/mygitaccount/myrepository.git
config push -u origin master
```

# Warning
**DO NOT** issue `config add .` or `config add -A`. Always specify the files/directories you want to add. Otherwise you will add the whole directories and files configured with the `--work-tree` parameter.
