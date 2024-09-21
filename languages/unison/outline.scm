(term_definition
  name: (wordy_id) @name) @item

(type_declaration
  (type_kw) @context
  (type_constructor 
    ((type_name (wordy_id) @name)) @item))

(doc_block) @annotation
(comment) @annotation
