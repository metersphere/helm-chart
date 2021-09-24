{{/* Allow KubeVersion to be overridden. */}}
{{- define "metersphere.kubeVersion" -}}
  {{- default .Capabilities.KubeVersion.Version .Values.kubeVersionOverride -}}
{{- end -}}
{{/* Get Ingress API Version */}}
{{- define "metersphere.ingress.apiVersion" -}}
  {{- if .Capabilities.APIVersions.Has "networking.k8s.io/v1beta1" -}}
    {{- print "networking.k8s.io/v1beta1" -}}
  {{- else -}}
    {{- print "extensions/v1beta1" -}}
  {{- end -}}
{{- end -}}