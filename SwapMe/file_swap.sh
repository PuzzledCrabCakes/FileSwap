#!/bin/bash

run_with_progress() {
    local script=$1
    local step_name=$2

    echo "$step_name\r\c"
    sh "$script" | while read line; do
        echo "  $line"
    done

    echo "$step_name\r\c"


}

run_with_progress "create_blank.sh"   "Creating blank files |oooooooooooooooo| 0%"
run_with_progress "move_files.sh"     "Moving files         |xxxxoooooooooooo| 25%"
run_with_progress "organize_files.sh" "Organizing by type   |xxxxxxxxoooooooo| 50%"
run_with_progress "cleanup.sh"        "Cleaning up          |xxxxxxxxxxxxoooo| 75%"
