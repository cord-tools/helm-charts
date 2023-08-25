# cord-api-v2

![Version: 1.0.4](https://img.shields.io/badge/Version-1.0.4-informational?style=flat-square) ![AppVersion: 1.0.1](https://img.shields.io/badge/AppVersion-1.0.1-informational?style=flat-square)

Authentication and authorization service for Cord Tools

## Source Code

* <https://github.com/cord-tools/cord-api-v2>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~12.8.4 |

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
| config.APP_ASSET_HOST | string | `"https://cordtools.local"` |  |
| config.APP_FROM_EMAIL | string | `"Cord Tools <support@cord.tools>"` |  |
| config.APP_HOST | string | `"cordtools.local"` |  |
| config.AWS_REGION | string | `""` |  |
| config.OAUTH_APPLICATIONS_REQUIRE_SSL | string | `"true"` |  |
| config.RAILS_ENV | string | `"production"` |  |
| dbMigrateArgs[0] | string | `"bundle exec rake db:migrate"` |  |
| fullnameOverride | string | `""` |  |
| global.postgresql.auth.database | string | `"cordtools"` |  |
| global.postgresql.auth.password | string | `"changeme"` |  |
| global.postgresql.auth.postgresPassword | string | `"password"` |  |
| global.postgresql.auth.username | string | `"cordtools"` |  |
| global.postgresql.enabled | bool | `true` |  |
| global.postgresql.metrics.enabled | bool | `false` |  |
| global.postgresql.metrics.serviceMonitor.enabled | bool | `false` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/cord-tools/cord-api-v2"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"cordtools.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/api/v2/"` |  |
| ingress.hosts[0].paths[1].path | string | `"/users"` |  |
| ingress.hosts[0].paths[2].path | string | `"/oauth/"` |  |
| ingress.hosts[0].paths[3].path | string | `"/.well-known/"` |  |
| ingress.hosts[0].paths[4].path | string | `"/assets/"` |  |
| ingress.hosts[0].paths[5].path | string | `"/auth/"` |  |
| ingress.path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| internalAPIPass | string | `"changeme"` |  |
| internalAPIUser | string | `"internaluser"` |  |
| metrics.enabled | bool | `false` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secrets.JWT_SIGNING_KEY | string | `"changeme"` |  |
| secrets.SECRET_KEY_BASE | string | `"changeme"` |  |
| securityContext | object | `{}` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceMonitor.enabled | bool | `false` |  |
| tolerations | list | `[]` |  |
