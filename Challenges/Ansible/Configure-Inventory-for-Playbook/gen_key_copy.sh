#!/bin/bash

ssh-keygen -t rsa -b 4096

ssh-copy-id tony@stapp01

# Get password-less ssh to the server