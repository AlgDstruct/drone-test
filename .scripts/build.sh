#!/usr/bin/env bash

work_dir=$DRONE_SOURCE_BRANCH

cp tests/"$work_dir"/* "$work_dir"/
make -C $work_dir
mv $work_dir/a.out ./
