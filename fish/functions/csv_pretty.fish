function csv_pretty
    cat $argv | sed 's/,/ ,/g' | column -t -s, | less -S
end
