# dp-acme

DNSPod，ACME

## Use acme.sh

### Run acme.sh as a docker daemon

```
# Use DNSPod token
DP_Id=
DP_Key=
docker run --rm -itd -v ~/dp-acme:/acme.sh -e DP_Id=$DP_Id -e DP_Key=$DP_Key --name=acme.sh neilpang/acme.sh daemon
```

### Issue and install a cert

```
docker exec acme.sh --issue --dns dns_dp -d example.com -d www.example.com
sudo ./update_cert.sh example.com
```
