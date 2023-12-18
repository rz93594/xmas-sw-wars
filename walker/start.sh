#!/usr/bin/env bash
source /home/tmw/walker/bin/activate
cd /home/tmw/walker
flask --app main run --host=0.0.0.0
