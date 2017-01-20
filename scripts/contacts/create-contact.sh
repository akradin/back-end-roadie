TOKEN="BAhJIiUwMDVjM2M1N2IzMWJjYTNkM2VmYWI1M2JiMzVmMWUxYQY6BkVG--1cd73da0e0597c466d269499f33177afeaf58cfe"

curl --include --request POST http://localhost:4741/contacts \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "contact": {
      "name": "thomas",
      "phone_number": "1234567891",
      "band_id": 3
    }
  }'
