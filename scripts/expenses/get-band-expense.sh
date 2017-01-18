TOKEN="BAhJIiViOTRiODc4N2RlZWY3NWI2NGE0OTdjYzJhNGZhMDg2NAY6BkVG--befb3e7dd7adb3a52d369e314885682245c91e9d"

curl --include --request GET http://localhost:4741/expenses?band=11 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
