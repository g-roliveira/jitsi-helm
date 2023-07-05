{{- define "jitsi-meet.jibri.fullname" -}}
{{ include "jitsi-meet.fullname" . }}-jibri
{{- end -}}

{{- define "jitsi-meet.jibri.labels" -}}
{{ include "jitsi-meet.labels" . }}
app.kubernetes.io/component: jibri
{{- end -}}

{{- define "jitsi-meet.jibri.selectorLabels" -}}
{{ include "jitsi-meet.selectorLabels" . }}
app.kubernetes.io/component: jibri
{{- end -}}

{{- define "jitsi-meet.jibri.secret" -}}
{{ include "call-nested" (list . "prosody" "prosody.fullname") }}-jibri
{{- end -}}

{{- define "jitsi-meet.jibri.verifySecret" -}}
{{- if and .Values.jibri.vimeo.enable (not .Values.jibri.vimeo.secretName) }}
{{- fail "A secret é necessária quando jibri.vimeo.enable é verdadeiro." }}
{{- end }}
{{- end -}}
