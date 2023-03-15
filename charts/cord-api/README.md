# cord-api

![Version: 1.2.1](https://img.shields.io/badge/Version-1.2.1-informational?style=flat-square) ![AppVersion: 1.1.4](https://img.shields.io/badge/AppVersion-1.1.4-informational?style=flat-square)

The API for Cord Tools

## Source Code

* <https://github.com/cord-tools/cord-api>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://grafana.github.io/helm-charts | loki | ~2.3.0 |
| https://grafana.github.io/helm-charts | promtail | ~3.0.4 |
| https://raw.githubusercontent.com/bitnami/charts/pre-2022/bitnami | mongodb | ~10.5.2 |

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
| backupCleanerArgs | string | `"- ./cord-api backup-cleaner --days={{ .Values.backupCleaner.days }} --yes"` |  |
| backupSchedule | string | `"0 7 * * *"` |  |
| backupTriggerArgs[0] | string | `"./cord-api backup-trigger"` |  |
| config.AEM_DEFAULT_VOLUME_SIZE | string | `"40Gi"` |  |
| config.AEM_MAX_VOLUME_SIZE | string | `"1000Gi"` |  |
| config.AEM_MEMORY_REQUEST | string | `"2G"` |  |
| config.BASE_IMAGE_REPOSITORY | string | `"public.ecr.aws/cord-tools/base"` |  |
| config.BUCKET_URL | string | `"file:///cordtools-files"` |  |
| config.BUILD_IMAGE_PULL_SECRETS | string | `""` |  |
| config.DISPATCHER_IMAGE | string | `"public.ecr.aws/cord-tools/dispatcher:4.3.4"` |  |
| config.ENVIRONMENT_IMAGE_PULL_SECRETS | string | `""` |  |
| config.ENVIRONMENT_STORAGE_CLASS | string | `""` |  |
| config.GITHUB_AUTH_URL | string | `"https://github.com/login/oauth"` |  |
| config.GITHUB_CLIENT_ID | string | `""` |  |
| config.MAX_ENVIRONMENTS | string | `"10"` |  |
| config.OAUTH_ACCESS_TOKEN_URI | string | `"https://cordtools.local/oauth/token"` |  |
| config.OAUTH_AUTHORIZATION_URI | string | `"https://cordtools.local/oauth/authorize"` |  |
| config.OAUTH_CLIENT_ID | string | `""` |  |
| config.OAUTH_REDIRECT_URI | string | `"https://cordtools.local/oauth/authorize/package-tool"` |  |
| config.WEB_APP_URL | string | `"https://cordtools.local/"` |  |
| fullnameOverride | string | `""` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"public.ecr.aws/cord-tools/cord-api"` |  |
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
| newArchiveRetriever.afterDate | string | `"2022-02-04"` | Only find archives that were created after this date. This should be a recent date so that every archive in the AEM archive repository isn't downloaded |
| newArchiveRetriever.archivesAddress | string | `"https://downloads.stage.cord.tools/"` | Address of the AEM Archive repository |
| newArchiveRetriever.downloadCloudSDK | bool | `false` | Download new cloud SDK versions, e.g. 2022.2.6276.20220205T222203Z-220100 |
| newArchiveRetriever.downloadOnPrem | bool | `true` | Download new on prem AEM versions, e.g. 6.5.11 |
| newArchiveRetriever.enabled | bool | `true` | Enable the cron job to find and save new archives from the AEM Archive repository |
| newArchiveRetriever.schedule | string | `"0 7 * * *"` | Schedule to run the cron job on |
| newArchiveRetrieverArgs | string | `"- ./cord-api retrieveNewArchives --address={{ .Values.newArchiveRetriever.archivesAddress | quote }} --after={{ .Values.newArchiveRetriever.afterDate | quote }} --download-on-prem={{ .Values.newArchiveRetriever.downloadOnPrem | quote }} --download-cloud-sdk={{ .Values.newArchiveRetriever.downloadCloudSDK | quote }}"` | The command to run to retrieve new archives in a cronjob. It must be a string since it is a template. WARNING: Only change if you know what you are doing |
| nodeSelector | object | `{}` |  |
| packageScheduleRunner.enabled | bool | `true` |  |
| packageScheduleRunner.frequencies[0].frequency | string | `"daily"` |  |
| packageScheduleRunner.frequencies[0].schedule | string | `"0 4 * * *"` |  |
| packageScheduleRunner.frequencies[1].frequency | string | `"weekly"` |  |
| packageScheduleRunner.frequencies[1].schedule | string | `"0 5 * * 0"` |  |
| packageScheduleRunner.workers | int | `5` |  |
| packageScheduleRunnerArgs | string | `"- ./cord-api package-schedule-runner --frequency={{ .schedule.frequency }} --workers={{ .Values.packageScheduleRunner.workers }}"` |  |
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
| promtail.config.snippets.common[6].regex | string | `"__meta_kubernetes_pod_label_cordTools(.+)"` |  |
| promtail.config.snippets.common[6].replacement | string | `"cordTools${1}"` |  |
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
