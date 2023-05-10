# cord-proxy

![Version: 1.1.1](https://img.shields.io/badge/Version-1.1.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.0](https://img.shields.io/badge/AppVersion-1.1.0-informational?style=flat-square)

Forwards requests to AEM environments

## Source Code

* <https://github.com/cord-tools/cord-proxy>

## Chart Repo

Add the following repo to use the chart:

```console
helm repo add cord-tools https://cord-tools.github.io/helm-charts
```

## Install

You can deploy cord-proxy with the following command:

```console
helm upgrade --install cord-proxy cord-tools/cord-proxy
```

This command will:
* if cord-proxy is not installed, install it
* if cord-proxy is already installed, upgrade it

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| apiUrl | string | http://cord-api:8080 | URL to internal cord-api. Most likely this will be the Kubernetes DNS name for the cord-api service. |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Horizontal Pod Autoscaling configuration |
| fullnameOverride | string | `""` | Override the generated fullname for resources |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/cord-tools/cord-proxy"` |  |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | Secrets needed to pull the image |
| ingress.annotations | object | `{"nginx.ingress.kubernetes.io/proxy-body-size":"0"}` | Annotations to add to the ingress |
| ingress.enabled | bool | `true` | Enable creating an Ingress |
| ingress.hosts | list | `[{"host":"*.cordtools.local","paths":[{"path":"/"}]}]` | Hosts to define for the ingress. This should be a wildcard. |
| ingress.tls | list | `[]` | TLS certificates to add to the ingress |
| internalAPIPass | string | `"password"` | The password to use for internal calls to the cord-api |
| internalAPIUser | string | `"user"` | The user to use for internal calls to the cord-api |
| metrics.enabled | bool | `false` | Enable prometheus metric collection |
| nameOverride | string | `""` | Override the generated name for resources |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` | Annotations to add to pods |
| podSecurityContext | object | `{}` | Security context to set on the pods |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` |  |
| securityContext | object | `{}` | Security context to set on the container |
| service.port | int | `80` | The port to use for the service |
| service.type | string | `"ClusterIP"` | The type of service to use for cord-proxy |
| serviceMonitor.enabled | bool | `false` | Enable creating a ServiceMonitor for collecting metrics using Prometheus Operator |
| tolerations | list | `[]` |  |
