TOKEN="BAhJIiU3YmU5ZDBhNmU5Njk0ZmQxMTkwYjUyYzA3M2U1Mzk4ZQY6BkVG--4789e125da1e43f5c81fb84cc0623271c14fab52"

curl --include --request POST http://localhost:4741/contacts \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "butthole",
      "phone_number": "1234567891",
      "band_id": 14
    }
  }'
