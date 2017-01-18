TOKEN="BAhJIiVhZTFlNzcxM2RhNDg4YzcyZjVhNmU2ZjRjY2E3ZmFiMQY6BkVG--d1e98fa0af917fbe498adcf5bfd990d8ad90e3b0"

curl --include --request POST http://localhost:4741/bands \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "band": {
      "name": "scrap"
    }
  }'
