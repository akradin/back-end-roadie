TOKEN="BAhJIiVlNmYwZGZiOWI3YjEzZmMxNjcwOGY5ZjZjOTJkOWY3MgY6BkVG--dd2fdc438abce9e698333eef19c8b3905ce9e6be"

curl --include --request GET http://localhost:4741/contacts/1\
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
