# cord-api

![Version: 1.0.0-rc.0](https://img.shields.io/badge/Version-1.0.0--rc.0-informational?style=flat-square) ![AppVersion: 1.0.0-rc.0](https://img.shields.io/badge/AppVersion-1.0.0--rc.0-informational?style=flat-square)

The API for Cord Tools

## Source Code

* <https://github.com/cord-tools/cord-ui>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | mongodb | ~10.5.0 |
| https://grafana.github.io/helm-charts | loki | ~2.3.0 |
| https://grafana.github.io/helm-charts | promtail | ~3.0.0 |

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
| backupCleaner.days | int | `30` |  |
| backupCleaner.enabled | bool | `false` |  |
| backupCleaner.schedule | string | `"0 7 * * *"` |  |
| backupCleanerArgs | string | `"- ./aem-cloud-api backup-cleaner --days={{ .Values.backupCleaner.days }} --yes"` |  |
| backupSchedule | string | `"0 7 * * *"` |  |
| backupTriggerArgs[0] | string | `"./aem-cloud-api backup-trigger"` |  |
| config.AEMCLOUD_ACCESS_TOKEN_URI | string | `"https://cordtools.local/oauth/token"` |  |
| config.AEMCLOUD_AUTHORIZATION_URI | string | `"https://cordtools.local/oauth/authorize"` |  |
| config.AEMCLOUD_CLIENT_ID | string | `""` |  |
| config.AEMCLOUD_REDIRECT_URI | string | `"https://cordtools.local/oauth/authorize/package-tool"` |  |
| config.AEM_DEFAULT_VOLUME_SIZE | string | `"40Gi"` |  |
| config.AEM_MAX_VOLUME_SIZE | string | `"1000Gi"` |  |
| config.AEM_MEMORY_REQUEST | string | `"2G"` |  |
| config.BUCKET_URL | string | `"file:///cordtools-files"` |  |
| config.BUILD_IMAGE_PULL_SECRETS | string | `""` |  |
| config.DISPATCHER_IMAGE | string | `"public.ecr.aws/o1g8a1m8/dispatcher:4.3.3"` |  |
| config.ENVIRONMENT_IMAGE_PULL_SECRETS | string | `""` |  |
| config.ENVIRONMENT_STORAGE_CLASS | string | `""` |  |
| config.GITHUB_AUTH_URL | string | `"https://github.com/login/oauth"` |  |
| config.GITHUB_CLIENT_ID | string | `""` |  |
| config.MAX_ENVIRONMENTS | string | `"10"` |  |
| config.WEB_APP_URL | string | `"https://cordtools.local/"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/o1g8a1m8/cord-api"` |  |
| image.tag | string | `""` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations."nginx.ingress.kubernetes.io/proxy-body-size" | string | `"0"` |  |
| ingress.enabled | bool | `true` |  |
| ingress.hosts[0].host | string | `"cordtools.local"` |  |
| ingress.hosts[0].paths[0].path | string | `"/api/v1"` |  |
| ingress.tls | list | `[]` |  |
| localFileStore.accessModes[0] | string | `"ReadWriteOnce"` |  |
| localFileStore.enabled | bool | `true` |  |
| localFileStore.path | string | `"/cordtools-files"` |  |
| localFileStore.signingKey | string | `"changeme"` |  |
| localFileStore.volumeSize | string | `"40Gi"` |  |
| loki.config.chunk_store_config.max_look_back_period | string | `"720h"` |  |
| loki.config.table_manager.retention_deletes_enabled | bool | `true` |  |
| loki.config.table_manager.retention_period | string | `"720h"` |  |
| loki.enabled | bool | `true` |  |
| loki.persistence.enabled | bool | `false` |  |
| loki.persistence.size | string | `"10Gi"` |  |
| loki.serviceMonitor.enabled | bool | `false` |  |
| mongodb.auth.database | string | `"cordtools"` |  |
| mongodb.auth.enabled | bool | `true` |  |
| mongodb.auth.password | string | `"changeme"` |  |
| mongodb.auth.username | string | `"cordtools-user"` |  |
| mongodb.enabled | bool | `true` |  |
| mongodb.metrics.enabled | bool | `false` |  |
| mongodb.metrics.serviceMonitor.enabled | bool | `false` |  |
| mongodb.persistence.enabled | bool | `true` |  |
| mongodb.persistence.size | string | `"8Gi"` |  |
| nameOverride | string | `""` |  |
| nodeSelector | object | `{}` |  |
| packageScheduleRunner.enabled | bool | `true` |  |
| packageScheduleRunner.frequencies[0].frequency | string | `"daily"` |  |
| packageScheduleRunner.frequencies[0].schedule | string | `"0 4 * * *"` |  |
| packageScheduleRunner.frequencies[1].frequency | string | `"weekly"` |  |
| packageScheduleRunner.frequencies[1].schedule | string | `"0 5 * * 0"` |  |
| packageScheduleRunner.workers | int | `5` |  |
| packageScheduleRunnerArgs | string | `"- ./aem-cloud-api package-schedule-runner --frequency={{ .schedule.frequency }} --workers={{ .Values.packageScheduleRunner.workers }}"` |  |
| podAnnotations | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| promtail.config.snippets.common[0].action | string | `"replace"` |  |
| promtail.config.snippets.common[0].source_labels[0] | string | `"__meta_kubernetes_pod_node_name"` |  |
| promtail.config.snippets.common[0].target_label | string | `"node_name"` |  |
| promtail.config.snippets.common[1].action | string | `"replace"` |  |
| promtail.config.snippets.common[1].source_labels[0] | string | `"__meta_kubernetes_namespace"` |  |
| promtail.config.snippets.common[1].target_label | string | `"namespace"` |  |
| promtail.config.snippets.common[2].action | string | `"replace"` |  |
| promtail.config.snippets.common[2].replacement | string | `"$1"` |  |
| promtail.config.snippets.common[2].separator | string | `"/"` |  |
| promtail.config.snippets.common[2].source_labels[0] | string | `"namespace"` |  |
| promtail.config.snippets.common[2].source_labels[1] | string | `"app"` |  |
| promtail.config.snippets.common[2].target_label | string | `"job"` |  |
| promtail.config.snippets.common[3].action | string | `"replace"` |  |
| promtail.config.snippets.common[3].source_labels[0] | string | `"__meta_kubernetes_pod_name"` |  |
| promtail.config.snippets.common[3].target_label | string | `"pod"` |  |
| promtail.config.snippets.common[4].action | string | `"replace"` |  |
| promtail.config.snippets.common[4].source_labels[0] | string | `"__meta_kubernetes_pod_container_name"` |  |
| promtail.config.snippets.common[4].target_label | string | `"container"` |  |
| promtail.config.snippets.common[5].action | string | `"replace"` |  |
| promtail.config.snippets.common[5].source_labels[0] | string | `"__meta_kubernetes_pod_label_name"` |  |
| promtail.config.snippets.common[5].target_label | string | `"name"` |  |
| promtail.config.snippets.common[6].action | string | `"labelmap"` |  |
| promtail.config.snippets.common[6].regex | string | `"__meta_kubernetes_pod_label_aemCloud(.+)"` |  |
| promtail.config.snippets.common[6].replacement | string | `"aemCloud${1}"` |  |
| promtail.config.snippets.common[7].action | string | `"replace"` |  |
| promtail.config.snippets.common[7].replacement | string | `"/var/log/pods/*$1/*.log"` |  |
| promtail.config.snippets.common[7].separator | string | `"/"` |  |
| promtail.config.snippets.common[7].source_labels[0] | string | `"__meta_kubernetes_pod_uid"` |  |
| promtail.config.snippets.common[7].source_labels[1] | string | `"__meta_kubernetes_pod_container_name"` |  |
| promtail.config.snippets.common[7].target_label | string | `"__path__"` |  |
| promtail.enabled | bool | `true` |  |
| promtail.serviceMonitor.enabled | bool | `false` |  |
| rbac.create | bool | `true` |  |
| replicaCount | int | `1` |  |
| resources | object | `{}` |  |
| secrets.GITHUB_CLIENT_SECRET | string | `""` |  |
| securityContext | object | `{}` |  |
| service.internalPort | int | `8080` |  |
| service.port | int | `80` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| serviceMonitor.enabled | bool | `false` |  |
| tolerations | list | `[]` |  |