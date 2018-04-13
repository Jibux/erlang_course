{application, my_application_app,
[{description, "My super app"},
  {vsn, "1"},
  {modules, [my_genserv,my_super_sup]},
  {registered, [mon_gege,mon_sup]},
  {applications, [kernel, stdlib]},
  {mod, {my_application_app,[]}}
 ]}.

