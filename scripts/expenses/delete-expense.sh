TOKEN="BAhJIiVlYTg0MGE1MDkxNzQ5MDVkZDcwZWNkODdlMmI3ODA2MAY6BkVG--2ef1f833ebaac080bdc38e9ab0c3182dd7150304"

curl --include --request DELETE http://localhost:4741/expenses/2 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "contact": {
    "band_id": 3
  }
}'
