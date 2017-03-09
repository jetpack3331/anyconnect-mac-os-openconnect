#!/bin/bash
echo '<your-cert-password>' | sudo openconnect --servercert sha256:<sha256 hash>  --passwd-on-stdin  --cafile=CA.cer -c <filename>.pfx -u your.login  -v --script=/etc/vpnc/vpnc-script vpn.yourserver.tld
