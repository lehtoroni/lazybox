#!/bin/bash

# This is a simple script to backup all individual MySQL/MariaDB
# databases and compress them as .sql.xz

out_folder="./"

mysql -uroot -N -e 'show databases' | while read dbname; do

    echo "Dumping and compressing '${dbname}'"

    file_out="${out_folder}/${dbname}.sql.xz"
    rm -f -- ${file_out}  # delete if already exists

    # Add 
    mysqldump -uroot --single-transaction --quick --skip-lock-tables "$dbname" | xz -6 -T4 > ${file_out};

done
