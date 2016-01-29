#!/bin/bash
#This script backs up ~/bin to ~/backups with rsync


cd ~
rsync -avHAXS bin backups
