TOKEN="BAhJIiU5NWM3MDRkMDExNGE1Yzc3ODhmOGNiM2QzMGM4OWYyNQY6BkVG--073639e1b99f56c25e66868d18f2e8d5ba167033"

curl --include --request PUT http://localhost:4741/tasks/5 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
  --data '{
    "task": {
      "name": "cbuy stuff",
      "due_date": "2017-03-01",
      "priority": 1,
      "details": "details",
      "completed": "false",
      "band_id": 3
    }
  }'
