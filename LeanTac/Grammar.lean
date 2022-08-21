declare_syntax_cat l1_tactic
declare_syntax_cat l2_tactic
declare_syntax_cat l3_tactic
declare_syntax_cat value_tactic

syntax "eval"         : value_tactic
syntax "context"      : value_tactic
syntax "numgoals"     : value_tactic
syntax "fresh"        : value_tactic
syntax "type of"      : value_tactic
syntax "type_term"    : value_tactic

syntax "first"        : l1_tactic
syntax "solve"        : l1_tactic
syntax "idtac"        : l1_tactic
syntax "fail"         : l1_tactic
syntax "gfail"        : l1_tactic
syntax "match"        : l1_tactic
syntax "match goal"   : l1_tactic
--add lazymatch/multimatch ?

syntax "tryif"        : l2_tactic

syntax "try"          : l3_tactic
syntax "do"           : l3_tactic
syntax "repeat"       : l3_tactic
syntax "timeout"      : l3_tactic
syntax "time"         : l3_tactic
syntax "progress"     : l3_tactic
syntax "once"         : l3_tactic
syntax "exactly_once" : l3_tactic
syntax "only"         : l3_tactic
syntax "abstract"     : l3_tactic

declare_syntax_cat ltac_expr
declare_syntax_cat ltac_expr1
declare_syntax_cat ltac_expr2
declare_syntax_cat ltac_expr3
declare_syntax_cat ltac_expr4
declare_syntax_cat tactic_value
declare_syntax_cat tactic_arg
declare_syntax_cat ltac_expr0
declare_syntax_cat tactic_atom
declare_syntax_cat for_each_goal

syntax "(" ltac_expr ")"      : ltac_expr0
syntax "[>" for_each_goal "]" : ltac_expr0

syntax "()" : tactic_arg
syntax "()" : tactic_atom

syntax ltac_expr1 "+" ltac_expr2  : ltac_expr2
syntax ltac_expr1 "||" ltac_expr2 : ltac_expr2

syntax l3_tactic  : ltac_expr3
syntax ltac_expr2 : ltac_expr3

syntax ltac_expr3 ";" ltac_expr3         : ltac_expr4
syntax ltac_expr3 ";[" for_each_goal "]" : ltac_expr4
syntax ltac_expr3                        : ltac_expr4