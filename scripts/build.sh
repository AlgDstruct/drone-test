#!/usr/bin/env bash

work_dir=$DRONE_SOURCE_BRANCH

cp drone-test-private/"$work_dir"/* "$work_dir"/
make $work_dir
