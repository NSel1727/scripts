#!/bin/bash

tail -f -n 40000 prp-$( date "+%Y-%m-%d").log | grep -E -i '^([0-9]*)/([0-9]*)\. Process|wait|^(\s*)sha|^(\s*)base|^(\s*)user|^(\s*)start|^(\s*)end|^(\s*)pass|scheduled|done, exit'
