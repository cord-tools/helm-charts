# cord-stack

![Version: 1.1.22](https://img.shields.io/badge/Version-1.1.22-informational?style=flat-square)

The fullstack of Cord Tools

## Source Code

* <https://github.com/cord-tools/>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://cord-tools.github.io/helm-charts | cord-api | 1.2.8 |
| https://cord-tools.github.io/helm-charts | cord-api-v2 | 1.0.3 |
| https://cord-tools.github.io/helm-charts | cord-proxy | 1.1.1 |
| https://cord-tools.github.io/helm-charts | cord-ui | 1.2.5 |
| https://kubernetes.github.io/ingress-nginx | ingress-nginx | ~4.6.1 |
| https://prometheus-community.github.io/helm-charts | kube-prometheus-stack | ~45.27.1 |

## Chart Repo

Add the following repo to use the chart:

```console
helm repo add cord-tools https://cord-tools.github.io/helm-charts
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| cord-api-v2.config.APP_ASSET_HOST | string | `"https://cordtools.local"` |  |
| cord-api-v2.config.APP_FROM_EMAIL | string | `"Cord Tools <support@cord.tools>"` |  |
| cord-api-v2.config.APP_HOST | string | `"cordtools.local"` |  |
| cord-api-v2.config.AWS_REGION | string | `""` |  |
| cord-api-v2.config.DOCKER_REGISTRY_ENDPOINT | string | `"https://registry.cordtools.local"` |  |
| cord-api-v2.config.OAUTH_APPLICATIONS_REQUIRE_SSL | string | `"true"` |  |
| cord-api-v2.config.RAILS_ENV | string | `"production"` |  |
| cord-api-v2.enabled | bool | `true` |  |
| cord-api-v2.imagePullSecrets | list | `[]` |  |
| cord-api-v2.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| cord-api-v2.ingress.hosts[0].host | string | `"cordtools.local"` |  |
| cord-api-v2.ingress.hosts[0].paths[0].path | string | `"/api/v2/"` |  |
| cord-api-v2.ingress.hosts[0].paths[1].path | string | `"/users"` |  |
| cord-api-v2.ingress.hosts[0].paths[2].path | string | `"/oauth/"` |  |
| cord-api-v2.ingress.hosts[0].paths[3].path | string | `"/.well-known/"` |  |
| cord-api-v2.ingress.hosts[0].paths[4].path | string | `"/assets/"` |  |
| cord-api-v2.ingress.hosts[0].paths[5].path | string | `"/auth/"` |  |
| cord-api-v2.internalAPIPass | string | `"changeme"` |  |
| cord-api-v2.internalAPIUser | string | `"internaluser"` |  |
| cord-api-v2.metrics.enabled | bool | `true` |  |
| cord-api-v2.postgresql.metrics.enabled | bool | `true` |  |
| cord-api-v2.postgresql.metrics.serviceMonitor.enabled | bool | `true` |  |
| cord-api-v2.postgresql.postgresqlPassword | string | `"changeme"` |  |
| cord-api-v2.secrets.JWT_SIGNING_KEY | string | `"changeme"` |  |
| cord-api-v2.secrets.SECRET_KEY_BASE | string | `"changeme"` |  |
| cord-api-v2.serviceMonitor.enabled | bool | `true` |  |
| cord-api.backupCleaner.days | int | `30` |  |
| cord-api.backupCleaner.enabled | bool | `false` |  |
| cord-api.backupCleaner.schedule | string | `"0 7 * * *"` |  |
| cord-api.backupSchedule | string | `"0 7 * * *"` |  |
| cord-api.config.AEM_DEFAULT_VOLUME_SIZE | string | `"40Gi"` |  |
| cord-api.config.AEM_MAX_VOLUME_SIZE | string | `"1000Gi"` |  |
| cord-api.config.AEM_MEMORY_REQUEST | string | `"2G"` |  |
| cord-api.config.BASE_IMAGE_REPOSITORY | string | `"public.ecr.aws/cord-tools/base"` |  |
| cord-api.config.BUCKET_URL | string | `"file:///cordtools-files"` |  |
| cord-api.config.BUILD_IMAGE_PULL_SECRETS | string | `""` |  |
| cord-api.config.DISPATCHER_IMAGE | string | `"public.ecr.aws/cord-tools/dispatcher:4.3.3"` |  |
| cord-api.config.ENVIRONMENT_IMAGE_PULL_SECRETS | string | `""` |  |
| cord-api.config.ENVIRONMENT_STORAGE_CLASS | string | `""` |  |
| cord-api.config.GITHUB_AUTH_URL | string | `"https://github.com/login/oauth"` |  |
| cord-api.config.GITHUB_CLIENT_ID | string | `""` |  |
| cord-api.config.MAX_ENVIRONMENTS | string | `"10"` |  |
| cord-api.config.OAUTH_ACCESS_TOKEN_URI | string | `"https://cordtools.local/oauth/token"` |  |
| cord-api.config.OAUTH_AUTHORIZATION_URI | string | `"https://cordtools.local/oauth/authorize"` |  |
| cord-api.config.OAUTH_CLIENT_ID | string | `""` |  |
| cord-api.config.OAUTH_REDIRECT_URI | string | `"https://cordtools.local/oauth/authorize/package-tool"` |  |
| cord-api.config.WEB_APP_URL | string | `"https://cordtools.local/"` |  |
| cord-api.enabled | bool | `true` |  |
| cord-api.imagePullSecrets | list | `[]` |  |
| cord-api.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| cord-api.ingress.hosts[0].host | string | `"cordtools.local"` |  |
| cord-api.ingress.hosts[0].paths[0].path | string | `"/api/v1"` |  |
| cord-api.internalAPIPass | string | `"changeme"` |  |
| cord-api.internalAPIUser | string | `"internaluser"` |  |
| cord-api.localFileStore.enabled | bool | `true` |  |
| cord-api.localFileStore.path | string | `"/cord-files"` |  |
| cord-api.localFileStore.signingKey | string | `"changeme"` |  |
| cord-api.localFileStore.volumeSize | string | `"100Gi"` |  |
| cord-api.loki.persistence.enabled | bool | `true` |  |
| cord-api.loki.serviceMonitor.enabled | bool | `true` |  |
| cord-api.mongodb.auth.password | string | `"changeme"` |  |
| cord-api.mongodb.metrics.enabled | bool | `true` |  |
| cord-api.mongodb.metrics.serviceMonitor.enabled | bool | `true` |  |
| cord-api.promtail.config.snippets.common[0].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[0].source_labels[0] | string | `"__meta_kubernetes_pod_node_name"` |  |
| cord-api.promtail.config.snippets.common[0].target_label | string | `"node_name"` |  |
| cord-api.promtail.config.snippets.common[1].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[1].source_labels[0] | string | `"__meta_kubernetes_namespace"` |  |
| cord-api.promtail.config.snippets.common[1].target_label | string | `"namespace"` |  |
| cord-api.promtail.config.snippets.common[2].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[2].replacement | string | `"$1"` |  |
| cord-api.promtail.config.snippets.common[2].separator | string | `"/"` |  |
| cord-api.promtail.config.snippets.common[2].source_labels[0] | string | `"namespace"` |  |
| cord-api.promtail.config.snippets.common[2].source_labels[1] | string | `"app"` |  |
| cord-api.promtail.config.snippets.common[2].target_label | string | `"job"` |  |
| cord-api.promtail.config.snippets.common[3].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[3].source_labels[0] | string | `"__meta_kubernetes_pod_name"` |  |
| cord-api.promtail.config.snippets.common[3].target_label | string | `"pod"` |  |
| cord-api.promtail.config.snippets.common[4].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[4].source_labels[0] | string | `"__meta_kubernetes_pod_container_name"` |  |
| cord-api.promtail.config.snippets.common[4].target_label | string | `"container"` |  |
| cord-api.promtail.config.snippets.common[5].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[5].source_labels[0] | string | `"__meta_kubernetes_pod_label_name"` |  |
| cord-api.promtail.config.snippets.common[5].target_label | string | `"name"` |  |
| cord-api.promtail.config.snippets.common[6].action | string | `"labelmap"` |  |
| cord-api.promtail.config.snippets.common[6].regex | string | `"__meta_kubernetes_pod_label_cordTools(.+)"` |  |
| cord-api.promtail.config.snippets.common[6].replacement | string | `"cordTools${1}"` |  |
| cord-api.promtail.config.snippets.common[7].action | string | `"replace"` |  |
| cord-api.promtail.config.snippets.common[7].replacement | string | `"/var/log/pods/*$1/*.log"` |  |
| cord-api.promtail.config.snippets.common[7].separator | string | `"/"` |  |
| cord-api.promtail.config.snippets.common[7].source_labels[0] | string | `"__meta_kubernetes_pod_uid"` |  |
| cord-api.promtail.config.snippets.common[7].source_labels[1] | string | `"__meta_kubernetes_pod_container_name"` |  |
| cord-api.promtail.config.snippets.common[7].target_label | string | `"__path__"` |  |
| cord-api.promtail.serviceMonitor.enabled | bool | `true` |  |
| cord-api.secrets.GITHUB_CLIENT_SECRET | string | `""` |  |
| cord-api.serviceMonitor.enabled | bool | `true` |  |
| cord-proxy.enabled | bool | `true` |  |
| cord-proxy.imagePullSecrets | list | `[]` |  |
| cord-proxy.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| cord-proxy.ingress.hosts[0].host | string | `"*.cordtools.local"` |  |
| cord-proxy.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| cord-proxy.internalAPIPass | string | `"changeme"` |  |
| cord-proxy.internalAPIUser | string | `"internaluser"` |  |
| cord-proxy.metrics.enabled | bool | `true` |  |
| cord-proxy.serviceMonitor.enabled | bool | `true` |  |
| cord-ui.config.apiBaseUrl | string | `"https://cordtools.local"` |  |
| cord-ui.config.authenticationAccessTokenUri | string | `"https://cordtools.local/oauth/token"` |  |
| cord-ui.config.authenticationAuthorizationUri | string | `"https://cordtools.local/oauth/authorize"` |  |
| cord-ui.config.authenticationBaseUrl | string | `"https://cordtools.local"` |  |
| cord-ui.config.authenticationClientId | string | `""` |  |
| cord-ui.config.authenticationRedirectUri | string | `"https://cordtools.local/login"` |  |
| cord-ui.config.bitbucketApiUrl | string | `"https://api.bitbucket.org/2.0"` |  |
| cord-ui.config.bitbucketAuthUrl | string | `"https://bitbucket.org/site/oauth2/authorize"` |  |
| cord-ui.config.bitbucketBaseUrl | string | `"https://bitbucket.org"` |  |
| cord-ui.config.bitbucketCallbackUri | string | `"https://cordtools.local/bitbucket/callback"` |  |
| cord-ui.config.bitbucketClientId | string | `""` |  |
| cord-ui.config.environmentUrlSuffix | string | `"cordtools.local"` |  |
| cord-ui.config.githubApiUrl | string | `"https://api.github.com"` |  |
| cord-ui.config.githubAuthUrl | string | `""` |  |
| cord-ui.config.githubBaseUrl | string | `"https://github.com"` |  |
| cord-ui.config.githubClientId | string | `""` |  |
| cord-ui.config.githubRedirectUri | string | `"https://cordtools.local/github/callback"` |  |
| cord-ui.config.gitlabApiUrl | string | `"https://gitlab.com/oauth/authorize"` |  |
| cord-ui.config.gitlabAppId | string | `""` |  |
| cord-ui.config.gitlabBaseUrl | string | `"https://gitlab.com"` |  |
| cord-ui.config.gitlabCallbackUri | string | `"https://cordtools.local/gitlab/callback"` |  |
| cord-ui.enabled | bool | `true` |  |
| cord-ui.imagePullSecrets | list | `[]` |  |
| cord-ui.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| cord-ui.ingress.hosts[0].host | string | `"cordtools.local"` |  |
| cord-ui.ingress.hosts[0].paths[0].path | string | `"/"` |  |
| cord-ui.metrics.enabled | bool | `true` |  |
| cord-ui.serviceMonitor.enabled | bool | `true` |  |
| defaultPrometheusRules.create | bool | `true` |  |
| ingress-nginx.controller.config.use-forwarded-headers | string | `"true"` |  |
| ingress-nginx.controller.metrics.enabled | bool | `true` |  |
| ingress-nginx.controller.metrics.serviceMonitor.enabled | bool | `true` |  |
| ingress-nginx.controller.service.annotations | object | `{}` |  |
| ingress-nginx.enabled | bool | `true` |  |
| internalAPIPass | string | `"changeme"` |  |
| internalAPIUser | string | `"internaluser"` |  |
| kube-prometheus-stack.enabled | bool | `true` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.basic".enabled | bool | `false` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".allow_sign_up | bool | `true` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".allowed_domains | string | `"domain.tld"` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".api_url | string | `"https://cordtools.local/oauth/userinfo"` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".auth_url | string | `"https://cordtools.local/oauth/authorize"` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".client_id | string | `""` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".client_secret | string | `""` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".enabled | bool | `true` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".name | string | `"Cord Tools"` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".scopes | string | `"openid profile email"` |  |
| kube-prometheus-stack.grafana."grafana.ini"."auth.generic_oauth".token_url | string | `"https://cordtools.local/oauth/token"` |  |
| kube-prometheus-stack.grafana."grafana.ini".analytics.check_for_updates | bool | `true` |  |
| kube-prometheus-stack.grafana."grafana.ini".grafana_net.url | string | `"https://grafana.net"` |  |
| kube-prometheus-stack.grafana."grafana.ini".log.mode | string | `"console"` |  |
| kube-prometheus-stack.grafana."grafana.ini".paths.data | string | `"/var/lib/grafana/data"` |  |
| kube-prometheus-stack.grafana."grafana.ini".paths.logs | string | `"/var/log/grafana"` |  |
| kube-prometheus-stack.grafana."grafana.ini".paths.plugins | string | `"/var/lib/grafana/plugins"` |  |
| kube-prometheus-stack.grafana."grafana.ini".paths.provisioning | string | `"/etc/grafana/provisioning"` |  |
| kube-prometheus-stack.grafana."grafana.ini".server.root_url | string | `"https://grafana.cordtools.local"` |  |
| kube-prometheus-stack.grafana.adminPassword | string | `"changeme"` |  |
| kube-prometheus-stack.grafana.ingress.annotations."nginx.ingress.kubernetes.io/force-ssl-redirect" | string | `"true"` |  |
| kube-prometheus-stack.grafana.ingress.enabled | bool | `true` |  |
| kube-prometheus-stack.grafana.ingress.hosts[0] | string | `"grafana.cordtools.local"` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.podMonitorSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.probeSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.retention | string | `"30d"` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.ruleSelectorNilUsesHelmValues | bool | `false` |  |
| kube-prometheus-stack.prometheus.prometheusSpec.serviceMonitorSelectorNilUsesHelmValues | bool | `false` |  |
