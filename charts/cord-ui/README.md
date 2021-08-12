# cord-ui

![Version: 1.0.0-rc.0](https://img.shields.io/badge/Version-1.0.0--rc.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0-rc.0](https://img.shields.io/badge/AppVersion-1.0.0--rc.0-informational?style=flat-square)

The UI for Cord Tools

## Source Code

* <https://github.com/cord-tools/cord-ui>

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
| config.apiBaseUrl | string | `"https://cord.local"` |  |
| config.authenticationAccessTokenUri | string | `"https://cord.local/oauth/token"` |  |
| config.authenticationAuthorizationUri | string | `"https://cord.local/oauth/authorize"` |  |
| config.authenticationBaseUrl | string | `"https://cord.local"` |  |
| config.authenticationClientId | string | `""` |  |
| config.authenticationRedirectUri | string | `"https://cord.local/login"` |  |
| config.bitbucketApiUrl | string | `"https://api.bitbucket.org/2.0"` |  |
| config.bitbucketAuthUrl | string | `"https://bitbucket.org/site/oauth2/authorize"` |  |
| config.bitbucketBaseUrl | string | `"https://bitbucket.org"` |  |
| config.bitbucketCallbackUri | string | `"https://cord.local/bitbucket/callback"` |  |
| config.bitbucketClientId | string | `""` |  |
| config.environmentUrlSuffix | string | `"cord.local"` |  |
| config.githubApiUrl | string | `"https://api.github.com"` |  |
| config.githubAuthUrl | string | `""` |  |
| config.githubBaseUrl | string | `"https://github.com"` |  |
| config.githubClientId | string | `""` |  |
| config.githubRedirectUri | string | `"https://cord.local/github/callback"` |  |
| config.gitlabApiUrl | string | `"https://gitlab.com/oauth/authorize"` |  |
| config.gitlabAppId | string | `""` |  |
| config.gitlabBaseUrl | string | `"https://gitlab.com"` |  |
| config.gitlabCallbackUri | string | `"https://cord.local/gitlab/callback"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/o1g8a1m8/ui"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"cord.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.repository | string | `"nginx/nginx-prometheus-exporter"` |  |
| metrics.image.tag | string | `"0.8.0"` |  |
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
