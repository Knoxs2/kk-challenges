#!/bin/bash

aws ec2 create-key-pair --key-name nautilus-kp --key-type rsa

# Documentation reference: https://docs.aws.amazon.com/cli/latest/reference/ec2/create-key-pair.html