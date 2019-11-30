#!/bin/sh
fly -t main sp -p example -c ci/pipeline.yml -l ci/crential.yml
