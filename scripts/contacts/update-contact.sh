TOKEN="BAhJIiVhMDlmNDYwOWNiYTI0YjFmYmYzYzVjNzg4MDllNGZlNQY6BkVG--e52400258b04e14f57b990515bfc0313be65207a"

curl --include --request PUT http://localhost:4741/contacts/3  \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "test test",
      "phone_number": "1234567891",
      "email": "toast@butter.com",
      "company": "UMG",
      "details": "a good buddy of mine!",
      "band_id": 3
    }
  }'
