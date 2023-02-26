import Config
    
config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table, [
    {?a..?m, :"foo@LAPTOP-1FJ4F5CC"},
    {?n..?z, :"bar@LAPTOP-1FJ4F5CC"}
  ]
end