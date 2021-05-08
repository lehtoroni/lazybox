#!/bin/bash

# This is a shorthand script to open a reverse SSH tunnel to an XAMPP instance (on macOS),
# to allow connecting to a dev database (:3307) and a spare port (:2023)
# (assumes the installation location)

ssh root@192.168.64.2 -i ~/.bitnami/stackman/machines/xampp/ssh/id_rsa -R 3307:localhost:3307 -R 2023:localhost:2023 -4

