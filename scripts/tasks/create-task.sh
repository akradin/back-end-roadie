TOKEN="BAhJIiUxOGIzZGZhNTQ1MDE0Yzg0YjllMmI1NzQzNzc1ZTMwMQY6BkVG--dead874c1e77b0255d042135ee4533cabe45418c"

curl --include --request POST http://localhost:4741/tasks \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "call toby",
      "due_date": "2017-03-01",
      "priority": 1,
      "details": "details",
      "completed": "false",
      "band_id":14
    }
  }'
