((comment) @injection.content
 (#set! injection.language "comment"))

(block_mapping_pair
  key: (flow_node) @ahoj (#eq? @ahoj "run")
  value: (flow_node (plain_scalar (string_scalar) @injection.content)
  (#set! injection.language "bash")
  (#set! injection.include-unnamed-children)))

(block_mapping_pair
  key: (flow_node) @ahoj (#eq? @ahoj "run")
  value: (block_node (block_scalar) @injection.content
  (#set! injection.language "bash")
  (#set! injection.include-unnamed-children)))
