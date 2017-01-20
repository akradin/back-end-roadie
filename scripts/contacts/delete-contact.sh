TOKEN="BAhJIiVjMzM1YzhmZjA2OWNhY2JkZjIzNDZhZjI3MTlhYzQxNwY6BkVG--ad4482a15170687a9ae84880f99a778b2cea3bc8"

curl --include --request DELETE http://localhost:4741/contacts/36 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "expense": {
    "band_id": 14
  }
}'
