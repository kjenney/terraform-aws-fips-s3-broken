# fips

Simple example to see if we're using FIPS

## Run a Proxy server to intercept requests

`brew install squidman`

Start squidman and look at `/Users/ken/Library/Logs/squid/squid-access.log`




## Run Terraform with Proxy

```
export HTTP_PROXY="http://localhost:8080"
aws-vault exec me -- terraform plan
```
