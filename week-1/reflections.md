# 1.1 Think About Time Reflection

I learned about the Pomodoro time management technique, mindfulness meditation, 'Tiny Habits', and starting small and building larger things or habits from there.  The constant themes were to focus on smaller, incremental changes and to let the larger, wholesale changes grow naturally, as well as breaking your time into smaller chunks to maintain your focus over shorter periods instead of tackling entire projects at once.

Time boxing is a technique where you work based on time periods, not by task.  This keep your fresh without being overwhelmed and lets you pause for reflection at regular intervals. During Phase 0 I plan to use this method while I'm working alone to maintain my momentum. I expect a 30 min - 1 hour timeframe will work, but I'll need to figure out the ideal time for me.

Currently I manage my time by organizing my tasks into lists and trying to finish everything by the end of the day.  Once everything is done, I let myself relax.  It works for 80% of my tasks, but once I don;'t finish something, either an office closed or I was too tired and didn't finish it, the task gets rolled over to the next day and becomes a permanent fixture on my to-do list.  This is also a poor way to manage stress, since outstanding items stay on my mind, even when I try to get to sleep.

I want to implement the Pomodoro technique, but the timing/recap/review steps appear intimidating right now. Time boxing appears to be a more relaxed approach with similar structure, so I anticipate using that more. I'll give myself 25 minutes of work, followed by 10 pushups (reward) and 5 minutes of free time, then start it over again.  I had planned to estimate the time for each challenge/task based on the short/medium/long designation, split them into what appear 3 hour chunks, and try to knock out one chunk a day, regardless of how long they actually take.  However, I may change that to 6 30 minute timeboxes every day, which may be a less stressful, task-based approach.  I'll need to experiment to come up with the best approach.


# 1.2 The Command Line Reflection

A shell is a means of accessing an OS, and can utilize either a command line interface (CLI) or graphical user interface (GUI).  Bash is a Unix shell based off the Bourne shell from the 1970s.  It is the primary CLI for current Mac and Linux machines.

The biggest challenge with this exercise was understanding why I would use them. I understand nested directories already, so I was easily able to follow along with the lessons.  The bigger challenge was getting comfortable enough with the commands themselves so that utilizing the CLI would be quicker than the GUI.  I reached that point with most commands, as long as I already understand the directory layout, but am still struggling to see the value in a few, specifically pushd and popd or changing your PATH.

I was able to successfully use all the commands and side-challenges presented.

In my opinion, the most important commands are: pwd, ls, cd, mkdir, rmdir, rm, mv

I am still wrapping my head around the utility of: touch, cat, less, cp, |, <, >, >>. These seem to be executing certain actions in the terminal that would be better handled elsewhere, like the text editor.

-pwd - present working directory
-ls - list files and directories
-mv - move/rename file
-cd - change directory
-../ - go up in directory
-touch - create new blank file
-mkdir - make new directory
-less - read contents in page-level view
-rmdir - delete empty directory
-rm - remove files
-help - use OS manual

# 1.3 Forking and Cloning Reflection

Instructions for create/fork/clone a repo (git and GitHub)

### Create (create your own new repository):

1. Go to your account in GitHub. Find the "+" next to your username and use it to create a new repository.
2. Enter the Repository name, choose to make it Public or Private, select a license, and hit "Create repository"
3. The new repository will only contain your license, and will be accessible at the address: https://github.com/[USERNAME]/[REPOSITORY-NAME] (Links to an external site.)

### Fork (copy someone else's public repository):

1. Go to the GitHub page for the repository you want to take.
2. In the upper right, click the "Fork" button.  In the popup window, select the GitHub account you want to create a copy in.
3. GitHub will spin while the fork occurs, and then you will be taken to your new repository page: https://github.com/[USERNAME]/[FORKED-REPOSITORY-NAME]

### Clone (copy the repository to your local machine:

1. On the GitHub repository page, find the HTTPS address for the repository (https://github.com/[USERNAME]/[REPOSITORY-NAME].git (Links to an external site.))
2. On your local machine, open Terminal. Navigate to the directory that will be housing the repository.
3. Enter the following terminal command: $ git clone https://github.com/[USERNAME]/[REPOSITORY-NAME].git (Links to an external site.) (You may be prompted to enter your github username/password)
4. The repository files will be downloaded into the directory you selected.  They will be included in a directory with the same name as the repository in GitHub.

Forking a repository lets you access a repository that someone else created and loaded to GitHub.  You can then work on it yourself without affecting their published files. Creating a new repository just creates an empty repository you can then fill with whatever you want to.

I didn't have any real difficulties setting up git or GitHub. I had had some previous exposure to both, so I knew what git what used for and had GitHub already linked to my computer. The lessons taught me some details about git, including some commands I wasn't familiar and how/why to fork a repository on GitHub.  But everything else with this lesson went very smoothly for me -- I've actually spent more time writing the reflection than following the lesson outline.
