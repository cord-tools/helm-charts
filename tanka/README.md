# Cord Tools

Cord Tools can be installed via [Tanka](https://tanka.dev) using its built in Helm support. This is an example of how to do that.

You can use all the features of Tanka such as deploying specific resources:

```
# Deploy all Ingresses
tk apply environment/default -t 'Ingress/.*'

# Deploy all cord-api resources
tk apply environment/default -t '.*/cord-stack-cord-api'
```

Or generating a diff between your configuration and the cluster:

```
tk diff environment/default
```

You can even patch resources or add new ones:

```jsonnet
# environments/default/main.jsonnet
local cordValues = importstr 'cord-stack-values.yaml';

(import 'cord-stack.libsonnet') +
{
  _config+:: {
    values: std.native('parseYaml')(cordValues)[0],
  },
  cordtools+: {
     job_cord_stack_ingress_nginx_admission_create+: {
       spec+: {
         template+: {
           metadata+: {
             annotations+: {
               'linkerd.io/inject': 'disabled',
             },
           },
         },
       },
     },
  },
  linkerd: {
    ingress:
      local ingress = k.networking.v1.ingress;

      ingress.new('web')
      // ...
  }
}
```

## Getting Started

### Install Tanka

First install Tanka, Jsonnet Bundler, and Helm including all of their dependencies. Instructions can be found here: https://tanka.dev/install

### Download Jsonnet libs

Use Jsonnet Bundler to download the required libraries. These libraries are defined in [`jsonnetfile.json`](jsonnetfile.json).

```
jb install
```

### Download Helm Chart files

The Cord Tools Helm charts need to be downloaded. This chart and its version are defined in [`chartfile.yaml`](chartfile.yaml). Download it with:

```
tk tool charts vendor
```

### Configure environment

The environment needs to be configured so that Tanka knows which Kubernetes cluster to install the app into. If you know the address to the cluster then you can run the following command (replace the address with the correct one for your cluster):

```
tk env set environments/default --server=https://127.0.0.1:8443
```

You can also use your $KUBECONFIG to configure Tanka:

```
tk env set --server-from-context <name-of-context> environments/default
```

### Customize Cord Tools

You can customize the Cord Tools Helm chart by changing the values in [`environments/default/cord-stack-values.yaml`](environments/default/cord-stack-values.yaml). This is the exact same values file that is used when installing via Helm.

### Install Cord Tools

Cord Tools can now be installed via Tanka by running:

```
tk apply environments/default
```

## 
