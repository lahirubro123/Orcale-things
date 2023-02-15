# This script can generate root login and password for your vps

- Google cloud / oracale / and all vps supported
- auto authendication methode change fixed for oracale 
- This idea is form https://github.com/chnthkksn 
- Im a mod developer for his repo


# Frist Define Root PW
```
wget https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/opts/pwchange.sh && chmod +x pwchange.sh && ./pwchange.sh && rm pwchange.sh

```
# Root login enable script
```
wget https://github.com/lahirubro123/rootpw-generator/edit/main/opts/root-enable.sh && chmod +x root-enable.sh && ./root-enable.sh && rm root-enable.sh
```
# Fix Firewall / Auth expire fix for oracle cloud
```
wget https://github.com/lahirubro123/rootpw-generator/edit/main/cronjob.sh && chmod +x cronjob.sh && ./cronjob.sh && rm cronjob.sh && rm cronjob.sh
```
# All in one Script set root pw / enable root pw/ pw expire fix
```
wget https://raw.githubusercontent.com/lahirubro123/rootpw-generator/main/ocfix.sh && chmod +x ocfix.sh && ./ocfix.sh && rm ocfix.sh && rm ocfix.sh
```
**You're done. Your authentication method will never reset now !**
