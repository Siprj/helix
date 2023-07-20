((comment) @injection.content
 (#set! injection.language "comment"))

;; Github actions ("run") / Gitlab CI ("scripts")
(block_mapping_pair
  key: (flow_node) @_run (#eq? @_run "run")
  value: (flow_node
           (plain_scalar (_) @injection.content)
           (#set! injection.language "bash")))

(block_mapping_pair
  key: (flow_node) @_run (#eq? @_run "run")
  value: (block_node
           (block_scalar) @injection.content
           (#set! injection.language "bash")))