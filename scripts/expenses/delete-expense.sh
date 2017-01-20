TOKEN="BAhJIiU1NjlkYTdlNDRhZDRjYjAzZGIzNTk0M2U3MzVjNjllMgY6BkVG--886a880c5ed70bfddccf2a0e7759266b09d7fcc7"

curl --include --request DELETE http://localhost:4741/expenses/23 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "contact": {
    "band_id": 14
  }
}'
