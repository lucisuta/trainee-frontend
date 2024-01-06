#!/bin/bash -xe
appid=$(pidof App)
kill $appid
