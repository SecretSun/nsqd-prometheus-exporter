#!/bin/bash
set -ex -o pipefail

# Test for expected metric
curl -s localhost:30000/metrics > metrics.out
cat metrics.out
cat metrics.out | grep 'nsqd_depth{channel="",paused="false",topic="test",type="topic"} 1'
