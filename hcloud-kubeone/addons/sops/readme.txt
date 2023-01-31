Use this template to create the namespace and secret


apiVersion: v1
kind: Namespace
metadata:
  name: kube-infra
---
apiVersion: v1
data:
  sops.asc: XXX
kind: Secret
metadata:
  name: sops-gpg
  namespace: kube-infra
type: Opaque


Follow the steps on https://fluxcd.io/flux/guides/mozilla-sops/ to generate the key