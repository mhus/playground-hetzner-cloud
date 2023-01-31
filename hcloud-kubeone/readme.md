Sources:
* https://www.kubermatic.com/blog/kubernetes-on-hetzner-with-kubermatic-kubeone-in-2021/
* https://docs.kubermatic.com/kubeone/v1.5/guides/machine-controller/
* https://github.com/kubermatic/kubeone/blob/main/examples/terraform/hetzner/README.md

Install
```

export TF_VAR_cluster_name=test
export HCLOUD_TOKEN=...

tf apply

tf output -json > output.json
kubeone apply --manifest kubeone.yaml --tfjson output.json 

kubeone kubeconfig --manifest kubeone.yaml --tfjson output.json > ~/.kube/config-hetzner
export KUBECONFIG=/Users/hummel/.kube/config-hetzner

kubeone config print --full

```

