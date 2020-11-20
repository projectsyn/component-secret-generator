local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.secret_generator;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('secret-generator', params.namespace);

{
  'secret-generator': app,
}
