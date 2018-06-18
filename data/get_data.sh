#!/bin/bash

mkdir video
cd video

curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/video/train mirror=us python3
curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/video/validate mirror=us python3
curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/video/test mirror=us python3

# Frame-level
cd ..
mkdir frame
cd frame
curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/frame/train mirror=us python3
curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/frame/validate mirror=us python3
curl -N data.yt8m.org/download.py | tac | tac | shard=1,100 partition=2/frame/test mirror=us python3
