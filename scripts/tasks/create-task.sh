TOKEN="BAhJIiUxMmE5NDIwZjk0YmZiNWZiYzRhZWU0ODNhNzhlMWIzZAY6BkVG--a85e47d99a40908022ececb3c70750ed685a8c03"

curl --include --request POST http://localhost:4741/tasks \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "call rick",
      "due_date": "2017-03-01",
      "priority": 1,
      "details": "details",
      "completed": "false",
      "band_id": 11
    }
  }'
