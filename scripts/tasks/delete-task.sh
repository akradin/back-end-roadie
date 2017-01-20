TOKEN="BAhJIiViYzA0ZTZlMGNmMTQ5MmQ1YTI4ZWE0YTc2Mzk0YmI3MwY6BkVG--e4223210e8cb129482e8158ff0ff41655a005e28"

curl --include --request DELETE http://localhost:4741/tasks/114 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
--data '{
  "task": {
    "band_id": 14
  }
}'
