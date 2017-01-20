TOKEN="BAhJIiU3OTI5YTkwNDBlNTE1OGM1NjQyMjk5NTExMjEyNDJjOAY6BkVG--bb1050a64b99423c328ca884bc5948246ecc205d"

curl --include --request PUT http://localhost:4741/contacts/33  \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "test test",
      "phone_number": "1234567891",
      "email": "toast@butter.com",
      "company": "UMG",
      "details": "a good buddy of mine!",
      "band_id": 14
    }
  }'
