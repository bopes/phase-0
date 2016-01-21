# Tracking Changes Reflection

  * How does tracking and adding changes make developers' lives easier?
    - Tracking changes lets developers keep track of what they are doing at any particular time. They can see what changes they've made and can easily take out anything they realize that they didn't need to do.  It gives them a check to make sure they only keep what they want, and don't accidentally add in unneccessary or broken code.
  *What is a commit?
    -A commit a git's version of 'saving'. The user can bundle all changes they've made since their last commit and save them all at once. It also gives them a backup in case they need to roll back their code to a previous version, and can be used as a base to compare their current status against.
  *What are the best practices for commit messages?
    -Commit messages should be written in the imperative (I forgot this earlier). Initial headers should be kept short (<50 characters) and use proper capitalization. More extended commit descriptions should be separated from the first row with a blank row and contain more details (if needed). Text should wrap around 72 characters. Bullets are allowed as hyphens, and hanging indents should be used where applicable.
  *What does the HEAD^ argument mean?
    -HEAD^ refers to the previous commits in a branch.  You can use the HEAD^ in the command line to roll a file's status back to a previous commit in the branch.
  *What are the 3 stages of a git change and how do you move a file from one stage to the other?
    -The three stages are Add, Commit, and Merge (I think). To Add changes, you need to specify that git should watch for changes in a certain file by using the command "git add [FILENAME]". Once the file is being tracked, you commit the change by using the command "git commit -m "[MESSAGE]"", or you can use "git commit -v".  This commits the changes to git. To merge the feature branch with the master, use the command "git merge master". This will merge the master branch into the feature branch, which can then be pushed to GitHub.
  *Write a handy cheatsheet of the commands you need to commit your changes?
    - Initialize repository:                  $ git init
    - Check available Git branches:           $ git branch
        // (starred branch is current)
    - Check current Git branch statuses:      $ git status
    - Create new Git branch:                  $ git branch <name-of-branch>
    - Checkout existing Git branch:           $ git co <name-of-branch>
    - Checkout new Git branch:                $ git co -b <name-of-branch>
    - Stage changes:                          $ git add <file-name(?)>
    - Commit to Git:                          $ git commit -m "<message>"
    - Check changes in repository             $ git diff
    - Merge Git branch (from master):         $ git merge <name-of-branch-to-merge>
    - Delete Git branch:                      $ git branch -d <name-of-branch-to-delete>
  *What is a pull request and how do you create and merge one?
    -A pull request is a way to solicit review from another team member within GitHub.  After you push the changes to GitHub, you will update the pull request with the proper name and description.  Then you will "create the pull request" which will prompt other team members to review and merge it with the master, The pull request will include each change you made by comparing the new code to the master.  After a team member reviews the pull request, they will choose to Merge it with the master, and then delete the feature branch.
  *Why are pull requests preferred when working with teams?
    -Pull requests are preferred because they enforce team review and don't let a single user update the master with their own code before anyone else checks it.  This prevents team members getting in each other's way.