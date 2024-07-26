(class_name_statement
    "class_name" @context
    (name) @name
    ) @item

(extends_statement
    "extends" @context
    (type
        (identifier) @name
    )) @item

(signal_statement
    "signal" @context
    (name) @name
    (parameters
        "(" @context
        ")" @context)?
    ) @item

(enum_definition
    "enum" @context
    name:(name) @name
    ) @item

(source
    (const_statement
        "const" @context
        name:(name) @name
        ) @item)

(source
    (variable_statement
        (annotations
            (annotation
                "@" @context
                (identifier) @name)
            )?
        "var" @context
        name:(name) @name
        ) @item)

(function_definition
    (static_keyword)? @context
    "func" @context
    name:(name) @name
    parameters:(parameters
        "(" @context
        ")" @context)
    )@item

(class_definition
    "class" @context
    name:(name) @name
    ) @item

(class_definition
  body:(body
    (variable_statement
        (annotations
            (annotation
                "@" @context
                (identifier) @name)
            )?
        "var" @context
        name:(name) @name
        )@item ))

(class_definition
    body:(body
        (const_statement
            "const" @context
            name:(name) @name
            )@item ))
