;; Primitives
(comment) @comment
(nat) @number
(unit) @constant
(literal_char) @string.special ;; Closest thing to a "string" of a special character
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
  (rewrite)
  (kw_termlink)
  (kw_typelink)
  (handle)
  "if"
  "else"
  "then"
  (match)
  (with)
  (cases)
  (unique)
  (structural)
] @keyword

;; Operators
[
  (operator)
  (pipe)
  (arrow_symbol)
  (or)
  (and)
  (bang)
] @operator

(blank_pattern) @variable.special
(pattern) @variable

(doc_block) @comment.doc
(use_clause) @keyword.import

;; Types
[
  (type_constructor)
] @constructor

(record_field
  (field_name) @property
  type: (regular_identifier) @type)

(type_name) @type

(type_declaration
  (regular_identifier) @variant)

(ability_name
  (path)? @namespace
  (regular_identifier) @type)

(ability_declaration
  (ability_name) @type
  (type_argument) @parameter)

(constructor
  (constructor_name) @constructor)
(ctor (regular_identifier) @constructor)
(constructor type: (regular_identifier) @type)

(effect (regular_identifier) @type.special) ;; NOTE: an effect is just like a type, but in signature we special case it

;; Namespaces
(path) @namespace
(namespace) @namespace

;; Terms
(type_signature
  term_name: (path) @namespace
  term_name: (regular_identifier) @variable)

(type_signature
  term_name: (regular_identifier) @variable)

(term_type) @type

(term_definition
  name: (path) @namespace)

(term_definition name: (regular_identifier) @variable)
(term_definition param: (regular_identifier) @parameter)

;; Punctuation
[
  (type_signature_colon)
  ":"
  (comma)
] @punctuation.delimiter

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

(watch_expression) @label
(test_watch_expression) @label

;; seems to cause more highlighting than desired in longer files, for now.
;; (ERROR) @hint
