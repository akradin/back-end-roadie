TOKEN="BAhJIiU3YTcwMzZkMzNiYTRhN2VjZWYwMjdmMWQyN2RmZDllMgY6BkVG--262c4bf4874042e1b89f8e8edbef4f0a5ad460ee"

curl --include --request GET http://localhost:4741/tasks?band=11 \
--header "Authorization: Token token=${TOKEN}" \
--header "Content-Type: application/json" \
