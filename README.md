# acme-script

## Vercel

```sh
# Use Vercel token
export VERCEL_TOKEN=
docker run --rm -itd -v "$(pwd)/out":/acme.sh -e VERCEL_TOKEN=$VERCEL_TOKEN --name=acme.sh neilpang/acme.sh daemon
# Issue
docker exec acme.sh --issue --dns dns_vercel -d example.com
# Install
sudo ./update_cert.sh example.com
```

## DNSPod

```sh
# Use DNSPod token
export DP_Id=
export DP_Key=
docker run --rm -itd -v "$(pwd)/out":/acme.sh -e DP_Id=$DP_Id -e DP_Key=$DP_Key --name=acme.sh neilpang/acme.sh daemon
# Issue
docker exec acme.sh --issue --dns dns_dp -d example.com
# Install
sudo ./update_cert.sh example.com
```
