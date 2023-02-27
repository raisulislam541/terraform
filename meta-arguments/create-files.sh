#!/bin/bash

for i in {1..3}
  do
    touch /Users/raisul/Documents/terraform-local/meta-arguments/pet${i}
  done

# meta arguments are basially lifecycle and depends_on
