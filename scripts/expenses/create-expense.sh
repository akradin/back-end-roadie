TOKEN="BAhJIiViOTRiODc4N2RlZWY3NWI2NGE0OTdjYzJhNGZhMDg2NAY6BkVG--befb3e7dd7adb3a52d369e314885682245c91e9d"

curl --include --request POST http://localhost:4741/expenses \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "expense": {
      "name": "cds",
      "cost": 420.69,
      "details": "details",
      "band_id": 11

    }
  }'
