TOKEN="BAhJIiUxOGIzZGZhNTQ1MDE0Yzg0YjllMmI1NzQzNzc1ZTMwMQY6BkVG--dead874c1e77b0255d042135ee4533cabe45418c"

curl --include --request POST http://localhost:4741/bands \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "band": {
      "name": "scrapy boy"
    }
  }'
