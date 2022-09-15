#!/bin/bash

while getopts ":m:" opt; do
    case $opt in
        m)
            cd ~/Github-personal/tutorials/mac-proxy-lab-setup
            echo "cd ~/Github-personal/tutorials/mac-proxy-lab-setup/" >&2
            git add README.md
            echo "git add README.md" >&2
            git commit -m "$OPTARG"
            echo 'git commit -m "'$OPTARG'"' >&2
            echo "git push" >&2
            git push
            cd ~/Github-personal/tutorials/win-data-science-py-setup
            echo "cd ~/Github-personal/tutorials/win-data-science-py-setup" >&2
            git add README.md
            echo "git add README.md" >&2
            git commit -m "$OPTARG"
            echo 'git commit -m "'$OPTARG'"' >&2
            echo "git push" >&2
            git push
            cd ~/GitLab-work/tutorials/win-data-science-py-setup
            echo "cd ~/GitLab-work/tutorials/win-data-science-py-setup" >&2
            git add README.md
            echo "git add README.md" >&2
            git commit -m "$OPTARG"
            echo 'git commit -m "'$OPTARG'"' >&2
            echo "git push" >&2
            git push
            cd ~ 
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done


