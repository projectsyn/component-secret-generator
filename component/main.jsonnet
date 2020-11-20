// main template for secret-generator
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.secret_generator;

// Define outputs below
{
  '00_namespace': kube.Namespace(params.namespace),
}
