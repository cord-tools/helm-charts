{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "cord-stack.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cord-stack.fullname" -}}
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

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cord-stack.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "cord-stack.labels" -}}
helm.sh/chart: {{ include "cord-stack.chart" . }}
{{ include "cord-stack.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cord-stack.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cord-stack.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "cord-stack.loki.fullname" -}}
{{- printf "%s-%s" .Release.Name "loki" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "cord-stack.prometheus.fullname" -}}
{{- printf "%s-%s" .Release.Name "kube-prometheus-prometheus" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
