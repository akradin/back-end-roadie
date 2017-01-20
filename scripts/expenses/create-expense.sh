TOKEN="BAhJIiU2MThhZjVkNTU2Y2YxN2EyYTJkNDIxMDQ0MTY2MDMxNgY6BkVG--d740f3df2a16072fb253320af112aa34ecd26290"

curl --include --request POST http://localhost:4741/expenses \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "expense": {
      "name": "cds",
      "cost": 420.69,
      "details": "details",
      "band_id": 14

    }
  }'
