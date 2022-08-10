# AdGuard Home Notes

- [AdGuard Edgerouter X Guide](https://dev.to/zer0ed/install-adguard-home-on-edgerouter-x-including-local-hostname-resoluion-using-dnsmasq-2hmc)
- [AdGuard ER6P Guide](https://blog.jbrio.net/post/er6p-adguard/)

## Manual Update

```bash
sudo ./AdGuardHome -s stop
sudo curl -sL https://static.adguard.com/adguardhome/release/AdGuardHome_linux_mips64_softfloat.tar.gz | sudo tar xvz
sudo ./AdGuardHome -s start
```

## Other Manual Update

```bash
cd /config/adguard
sudo curl -sL https://static.adguard.com/adguardhome/release/AdGuardHome_linux_mips64_softfloat.tar.gz | sudo tar xvz

cd bin
sudo ./AdGuardHome -s uninstall
sudo ./AdGuardHome -s stop

cd ..
sudo rm -rf bin
sudo mv AdGuardHome bin

cd bin
sudo ./AdGuardHome -s install -c /config/adguard/config/AdGuardHome.yaml -w /config/adguard/work
```