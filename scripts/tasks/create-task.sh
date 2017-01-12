TOKEN="BAhJIiVkMTg4ZGE3NGZkZWYyNTcyN2ZlNzhkYjUyZGZlNDMzYwY6BkVG--509dc47a84a7c6136a1bd19bd8a19e185fdc99e3"

curl --include --request POST http://localhost:4741/tasks \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "call rick",
      "due_date": "2017-03-01",
      "priority": 1,
      "details": "details",
      "completed": "false"
    }
  }'
