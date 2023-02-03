
## Init (first time only)

```
export PASSWORD_STORE_DIR=safe1
gopass init --storage fs
gopass ls
echo "aloa" | gopass insert -f "test"
gopass show  -o test
```

## Run terraform

```
export PASSWORD_STORE_DIR=safe1
tf init
tf apply
```
