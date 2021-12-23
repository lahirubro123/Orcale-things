# Orcale-things

Make cronjob on every boot to run below command
```
wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/root-enable.sh && chmod +x root-enable.sh && sudo ./root-enable.sh && rm root-enable.sh
```
**If u don't know how to use crontab. Use bellow instructions**

Run crontab -e and add bellow line to the bottom 
```
@reboot sudo wget https://raw.githubusercontent.com/chnthkksn/Orcale-things/main/root-enable.sh && chmod +x root-enable.sh && sudo ./root-enable.sh && rm root-enable.sh
```

You're done. Your authentication method will never reset now !
