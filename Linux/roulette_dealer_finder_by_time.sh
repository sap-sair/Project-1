#!/bin/bash

awk -F" " '{print $1,$2,$5,$6}' * | grep '05:00:00 AM'
awk -F" " '{print $1,$2,$5,$6}' * | grep '08:00:00 AM'
awk -F" " '{print $1,$2,$5,$6}' * | grep '02:00:00 PM'
awk -F" " '{print $1,$2,$5,$6}' * | grep '08:00:00 PM'
awk -F" " '{print $1,$2,$5,$6}' * | grep '11:00:00 PM'
