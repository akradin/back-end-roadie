TOKEN="BAhJIiVkMTg4ZGE3NGZkZWYyNTcyN2ZlNzhkYjUyZGZlNDMzYwY6BkVG--509dc47a84a7c6136a1bd19bd8a19e185fdc99e3"

curl --include --request GET http://localhost:4741/bands/1 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
