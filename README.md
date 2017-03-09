# anyconnect-mac-os-openconnect
Instructions how to connect from Mac os x into AnyConnect VPN server

Before start, create folder and put all together.
.ca, .pfx and vpnc-script file toghether

1. brew update
2. brew install openconnect

3. Add into /etc/sudoers:
  - %admin ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect

4. When you have CA .cer and .pfx certificate:
  - Add both certificates into keychain login section

5. In keychain find newly added CA certificate right click on it and click on "Get info"
  - "When using this certificate" set to "Always trust"

6. Open up console and "cd" into directory with VPN files

```sh
sudo mv vpnc-script /etc/vpnc/vpnc-script
sudo chmod +x /etc/vpnc/vpnc-script
```

and run finally connect command

```sh
sudo openconnect --cafile=CA.cer -c <filename>.pfx -u your.login  -v --script=/etc/vpnc/vpnc-script vpn.yourserver.tld
```

--script=/etc/vpnc/vpnc-script -> set correct routing

- In console if you have pfx password protected then insert your password
- if there will be prompt for allowing server press enter (default 'yes')
- insert your password for your account

or

edit connect.sh file and set:
- Your cart password
- sha256 hash of server connecting to

then:
```sh
chmod +x connect.sh
./connect.sh
```
