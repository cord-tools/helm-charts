local cordValues = importstr 'cord-stack-values.yaml';

(import 'cord-stack.libsonnet') +
{
  _config+:: {
    values: std.native('parseYaml')(cordValues)[0],
  },
}
