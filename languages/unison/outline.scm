(term_definition
  name: (regular_identifier) @name) @item

(type_declaration
  (type_kw) @context
  (type_constructor
    ((type_name (regular_identifier) @name)) @item))

(doc_block) @annotation
(comment) @annotation
