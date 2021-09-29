local tanka = import 'github.com/grafana/jsonnet-libs/tanka-util/main.libsonnet';
local helm = tanka.helm.new(std.thisFile);

{
  _config+:: {
    includeCrds: true,
    kubeVersion: 'v1.21.0',
    noHooks: false,
    values: error 'must provide helm values',
  },
  cordtools: helm.template('cord-stack', '../charts/cord-stack', {
    includeCrds: $._config.includeCrds,
    kubeVersion: $._config.kubeVersion,
    noHooks: $._config.noHooks,
    values: $._config.values,
  }) + {
    pod_security_policy_cord_stack_grafana_test: {},
    service_account_cord_stack_grafana_test: {},
    config_map_cord_stack_grafana_test: {},
    role_cord_stack_grafana_test: {},
    role_binding_cord_stack_grafana_test: {},
    pod_cord_stack_grafana_test: {},
  },
}
