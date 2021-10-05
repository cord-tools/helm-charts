# cord-proxy

![Version: 1.0.0-rc.3](https://img.shields.io/badge/Version-1.0.0--rc.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0-rc.2](https://img.shields.io/badge/AppVersion-1.0.0--rc.2-informational?style=flat-square)

Forwards requests to AEM environments

## Source Code

* <https://github.com/cord-tools/cord-proxy>

## Chart Repo

Add the following repo to use the chart:

```console
helm repo add cord-tools https://cord-tools.github.io/helm-charts
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | int | `100` |  |
| autoscaling.minReplicas | int | `1` |  |
| autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/cord-tools/cord-proxy"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"0"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"*.cordtools.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| internalAPIPass | string | `"password"` |  |
| internalAPIUser | string | `"user"` |  |
| metrics.enabled | bool | `false` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceMonitor.enabled | bool | `false` |  |
| tolerations | list | `[]` |  |
