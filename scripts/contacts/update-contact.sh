TOKEN="BAhJIiVkMTg4ZGE3NGZkZWYyNTcyN2ZlNzhkYjUyZGZlNDMzYwY6BkVG--509dc47a84a7c6136a1bd19bd8a19e185fdc99e3"

curl --include --request PATCH http://localhost:4741/contacts/1 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "jim bob",
      "phone_number": "420-456-7890",
      "email": "water@bottle.com",
      "company": "GA",
      "details":"fuck boi"

    }
  }'
