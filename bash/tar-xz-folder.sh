#!/bin/bash

source_folder="/home/foo"
dest_file="/backups/foo.tar.xz"

tar -cf - ${source_folder} | xz -6 -T4 -c - > ${dest_file}
