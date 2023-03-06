```bash
┌─[badbot@parrot]─[~]
└──╼ $sudo iptables -A INPUT -p tcp --dport 8080 -s 52.202.215.126 -j ACCEPT
┌─[badbot@parrot]─[~]
└──╼ $sudo iptables -A INPUT -p tcp --dport 8080 -s 196.153.17.211 -j ACCEPT
┌─[badbot@parrot]─[~]
└──╼ $sudo iptables -A INPUT -p tcp --dport 8080 -s 197.53.65.47 -j ACCEPT
┌─[badbot@parrot]─[~]
└──╼ $sudo iptables -A INPUT -p tcp --dport 8080 -j REJECT

```
