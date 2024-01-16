# cord-ui

![Version: 1.2.6](https://img.shields.io/badge/Version-1.2.6-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.2.4](https://img.shields.io/badge/AppVersion-1.2.4-informational?style=flat-square)

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
| config.apiBaseUrl | string | `"https://cordtools.local"` |  |
| config.authenticationAccessTokenUri | string | `"https://cordtools.local/oauth/token"` |  |
| config.authenticationAuthorizationUri | string | `"https://cordtools.local/oauth/authorize"` |  |
| config.authenticationBaseUrl | string | `"https://cordtools.local"` |  |
| config.authenticationClientId | string | `""` |  |
| config.authenticationRedirectUri | string | `"https://cordtools.local/login"` |  |
| config.bitbucketApiUrl | string | `"https://api.bitbucket.org/2.0"` |  |
| config.bitbucketAuthUrl | string | `"https://bitbucket.org/site/oauth2/authorize"` |  |
| config.bitbucketBaseUrl | string | `"https://bitbucket.org"` |  |
| config.bitbucketCallbackUri | string | `"https://cordtools.local/bitbucket/callback"` |  |
| config.bitbucketClientId | string | `""` |  |
| config.environmentUrlSuffix | string | `"cordtools.local"` |  |
| config.githubApiUrl | string | `"https://api.github.com"` |  |
| config.githubAuthUrl | string | `""` |  |
| config.githubBaseUrl | string | `"https://github.com"` |  |
| config.githubClientId | string | `""` |  |
| config.githubRedirectUri | string | `"https://cordtools.local/github/callback"` |  |
| config.gitlabApiUrl | string | `"https://gitlab.com/oauth/authorize"` |  |
| config.gitlabAppId | string | `""` |  |
| config.gitlabBaseUrl | string | `"https://gitlab.com"` |  |
| config.gitlabCallbackUri | string | `"https://cordtools.local/gitlab/callback"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/cord-tools/cord-ui"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"cordtools.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/"` |  |
| ingress.tls | list | `[]` |  |
| metrics.enabled | bool | `false` |  |
| metrics.image.pullPolicy | string | `"IfNotPresent"` |  |
| metrics.image.repository | string | `"nginx/nginx-prometheus-exporter"` |  |
| metrics.image.tag | string | `"0.11.0"` |  |
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
