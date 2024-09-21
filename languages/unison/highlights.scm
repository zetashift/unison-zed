;; Primitives
(comment) @comment
(nat) @number
(unit) @constant
(literal_char) @string.special.symbol
(literal_text) @string
(literal_boolean) @boolean

;; Keywords
[
  (kw_forall)
  (type_kw)
  (kw_equals)
  (do)
  (ability)
  (where)
] @keyword

(kw_let) @function.definition
(type_kw) @keyword
(unique) @type.qualifier
(structural) @type.qualifier
("use") @keyword.control.import


[
  (type_constructor)
] @constructor

[
  (operator)
  (pipe)
  (arrow_symbol)
  (">")
  (or)
  (and)
  (bang)
] @operator

[
  "if"
  "else"
  "then"
  (match)
  (with)
  (cases)
] @keyword

(blank_pattern) @variable.special

;; Types
(record_field name: (wordy_id) @property type: (_) @type)
(type_constructor (type_name (wordy_id) @constructor))
(ability_declaration type_name: (wordy_id) @type type_arg: (wordy_id) @parameter)
(effect (wordy_id) @variable.special) ;; NOTE: an effect is just like a type, but in signature we special case it

;; Namespaces
(path) @namespace
(namespace) @namespace

;; Terms
(type_signature (wordy_id) @type)
(type_signature (term_type(delayed(wordy_id))?) @type)

(term_declaration 
  (type_signature term_name: (path)? @variable.special term_name: (wordy_id) @variable)?
  (term_definition name: (path)? @variable.special name: (wordy_id) @variable param: (wordy_id)? @parameter))

(function_application function_name: (path)? @variable.special function_name: (wordy_id) @function)

;; Punctuation
[
  (type_signature_colon)
  ":"
] @punctuation.delimiter

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

(test_watch_expression (wordy_id) @label)

(ERROR) @hint
