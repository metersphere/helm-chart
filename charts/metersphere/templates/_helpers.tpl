{{/* Allow KubeVersion to be overridden. */}}
{{- define "metersphere.kubeVersion" -}}
  {{- default .Capabilities.KubeVersion.Version .Values.kubeVersionOverride -}}
{{- end -}}
{{/* Get Ingress API Version */}}
{{- define "metersphere.ingress.apiVersion" -}}
    {{- print "networking.k8s.io/v1" -}}
{{- end -}}