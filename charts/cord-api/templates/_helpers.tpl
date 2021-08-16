{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "cord-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cord-api.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "cord-api.loki.fullname" -}}
{{- printf "%s-%s" .Release.Name "loki" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cord-api.mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "mongodb" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cord-api.cord-api-v2.fullname" -}}
{{- printf "%s-%s" .Release.Name "cord-api-v2" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cord-api.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "cord-api.labels" -}}
helm.sh/chart: {{ include "cord-api.chart" . }}
{{ include "cord-api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cord-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cord-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "cord-api.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "cord-api.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{- define "cord-api.envVars" -}}
env:
  - name: BACKUP_SYNC_IMAGE
    value: "{{ .Values.image.repository }}:{{ .Values.image.tag | default .Chart.AppVersion }}"
  - name: LOGS_URL
    {{- if .Values.loki.enabled }}
    value: "http://{{ include "cord-api.loki.fullname" . }}.{{ .Release.Namespace }}:{{ .Values.loki.config.server.http_listen_port }}"
    {{- else }}
    value: ""
    {{- end }}
  - name: API_V2_URL
    value: "http://{{ include "cord-api.cord-api-v2.fullname" . }}.{{ .Release.Namespace }}"
  - name: INTERNAL_API_URL 
    value: "http://{{ include "cord-api.fullname" . }}.{{ .Release.Namespace }}:8080"
  - name: DB_HOST
    value: {{ include "cord-api.mongodb.fullname" . | quote }}
  - name: DB_PORT
    value: {{ .Values.mongodb.port | default "27017" | quote }}
  - name: DB_NAME
    value: {{ .Values.mongodb.auth.database | default "cordtools" | quote }}
  - name: DB_USERNAME
    value: {{ .Values.mongodb.auth.username | default "cordtools-user" | quote }}
{{- range $key, $value := .Values.config }}
  - name: {{ $key | quote }}
    value: {{ $value | quote }}
{{- end }}
envFrom:
  - secretRef:
      name: {{ include "cord-api.fullname" . }}
{{- end -}}
