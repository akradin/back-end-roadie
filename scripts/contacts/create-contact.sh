TOKEN="BAhJIiViOTRiODc4N2RlZWY3NWI2NGE0OTdjYzJhNGZhMDg2NAY6BkVG--befb3e7dd7adb3a52d369e314885682245c91e9d"

curl --include --request POST http://localhost:4741/contacts \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "scrap remote",
      "phone_number": "123-456-7891",
      "email": "toast@butter.com",
      "company": "UMG",
      "details": "a good buddy!",
      "band_id": 11
    }
  }'
