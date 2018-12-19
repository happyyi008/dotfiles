#VIM

###Shortcuts
zz              : Center cursor location

0               : Go to beginning of the line

:%so ~/.vimrc   : reloads .vimrc

''!             : copy into system clipboard in visual mode

###Match and replace end of line with new line
:%s/$/^V^M/g

###Delete up to character
`dt<char>`

###Go to end of line and insert
shift-a

###Select word under cursor
viw # selects word
vaw # selects leading and trailing spaces

###Record and replay repeated actions
record: q[register][action]q
replay: @[register]

example:
qa^yw$pq

records yanking the first word on the line and pasting it to the end of line
into register a, q ends the recording


#########################################################################################

#BASH

###Loop through each line in file
while read p; do echo $p; done < file


###Loop n times
for i in {1..n}; do echo $i; done


###Loop through strings, useful for looping though executables
prog="p1 p2 p3 p4"
for p in $prog; do
    echo $prog
done


###Redirect time output. Time sends to stderr
time sleep 1 2> file


###Read file into variable
file=$(<file)


###Less in color
less -r


###copy directory recursivly
`cp -r`


### tail continuously updated program with grep
`adb -s 172.16.51.120:5555  shell top -m 1 |  egrep --line-buffered "User .* System .*" | while IFS= read -r line; do printf '%s:%s\n' "$(date +%s)" "$line"; done >> ~/elov1-cpu`


###Pretty print json
`echo '{}' | jq`
 

#########################################################################################


#GIT

###Set global ignore
```bash
git config --global core.excludesfile ~/dotifle/.gitignore_global
```

###Rename branch on local and remote
```bash
git branch -m old_branch new_branch         # Rename branch locally    
git push origin :old_branch                 # Delete the old branch    
git branch --unset-upstream                 # may be needed if the pushed branch get set to track the old branch
git push --set-upstream origin new_branch   # Push the new branch, set local branch to track the new remote
```

###git log: find a commit between two timestamps
```bash
git log --pretty="%h %an %ad" --since=2018-04-15 --until=2018-04-18
```

###git bisect: for tracking down an old commit that introduced a bug
```bash
git bisect start <bad> <good>
git bisect run script.sh            # script exits with 0 if good else bad
git bisect reset                    # resets bisect and goes to where you started
git bisect log > bisect.log         # shows bisect history to check if your script is correct
git bisect replay bisect.log        # if you mess up, correct the bisect log, reset and replay the log
```
