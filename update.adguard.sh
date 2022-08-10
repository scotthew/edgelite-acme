#!/bin/bash

sudo ./AdGuardHome -s stop
sudo curl -sL https://static.adguard.com/adguardhome/release/AdGuardHome_linux_mips64_softfloat.tar.gz | sudo tar xvz
sudo ./AdGuardHome -s start
