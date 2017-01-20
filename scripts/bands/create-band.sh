TOKEN="BBAhJIiUzNGU4NjgzNjVhOGE3MjI0ZWEyOGU0NDlhYTQ2NzMzMwY6BkVG--e970c33664614f7e8a991f813fc70e70393ea855"

curl --include --request POST http://localhost:4741/bands \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "band": {
      "name": "new band"
    }
  }'
