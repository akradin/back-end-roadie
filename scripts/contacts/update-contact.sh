TOKEN="BAhJIiVkMTg4ZGE3NGZkZWYyNTcyN2ZlNzhkYjUyZGZlNDMzYwY6BkVG--509dc47a84a7c6136a1bd19bd8a19e185fdc99e3"

curl --include --request PATCH http://localhost:4741/contacts/4 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "scrap remote",
      "phone_number": "123-456-7891",
      "email": "toast@butter.com",
      "company": "UMG",
      "details": "a good buddy of mine!"
    }
  }'