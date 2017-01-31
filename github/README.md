Github
=================

1. Create .gitignore
------------------------

Macos:

    vim .gitignore

Windows:
  
    open notepad
    save as .gitignore

2. Change remote
----------------------

    git remote set-url <remote name> <url>
    git remote add <remote name> <url>

3. Reset commit 
----------------------

Hard reset, it will delete all your code up to commit that you want to revert
  
    git reset --hard HEAD (or any commit)


Remove commits and keep the code

    git reset HEAD~<number of commits>

4. Working on other pull request
-------------------------------------

Add remote, <github acc> here is the owner of pull request 

    git remote add <github acc> https://github.com/<github acc>/<repo>

Fetch lastest version of upstream

    git fetch upstream

Create a branch with pull request you need to fetch

    git fetch upstream pull/<id of PR>/head:<branch name>

After done your job with this pull request, if you want to push your commit to this branch

    git push <github acc> <branch name>
    
5. .gitignore doesn't work
--------------------------------

    git rm -r --cached .
    git add .
    git commit -m "Fix untracked files after edit gitignore"  

