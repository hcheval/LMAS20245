import Lake
open Lake DSL

package "LMAS20245" where
  version := v!"0.1.0"

lean_lib «LMAS20245» where
  -- add library configuration options here

@[default_target]
lean_exe "lmas20245" where
  root := `Main
