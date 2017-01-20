TOKEN="BAhJIiVjODdhMGNhMTNlOTVmYTkwZDZlZjU3MjcyNzRlYWYwMwY6BkVG--270b84346d66336c04edf61f892911a655b6e982"

curl --include --request DELETE http://localhost:4741/contacts/3 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "expense": {
    "band_id": 3
  }
}'
