# dp-acme

DNSPod，ACME

## Use acme.sh

### Run acme.sh as a docker daemon

```
# Use DNSPod token
docker run --rm -itd -v ~/dp-acme:/acme.sh -e DP_Id= -e DP_Key= --name=acme.sh neilpang/acme.sh daemon
```

### Issue a cert

```
docker exec acme.sh --issue --dns dns_dp -d example.com
```
