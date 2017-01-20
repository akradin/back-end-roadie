TOKEN="BAhJIiU1NTMwMTk4ZTgxNGQwZDdiMWM1NTMzZGM1M2ViNzUxZgY6BkVG--42e17c34ed804ca343c61e7a03bf0d4640e8e3af"

curl --include --request POST http://localhost:4741/expenses \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "expense": {
      "name": "shirts",
      "cost": 420.69,
      "details": "details",
      "band_id": 3

    }
  }'
