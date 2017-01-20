  TOKEN="BAhJIiU2MThhZjVkNTU2Y2YxN2EyYTJkNDIxMDQ0MTY2MDMxNgY6BkVG--d740f3df2a16072fb253320af112aa34ecd26290"
  ID="6"
  curl --include --request DELETE http://localhost:4741/sign-out/$ID \
    --header "Authorization: Token token=$TOKEN"

TOKEN="BAhJIiU4Yzc2NThhZWJlMDdkZDg0OGYyMjczNDlhNTI4Y2MzZgY6BkVG--3bf1fc17a5e50018c02acb1b5c2528e40b2681fb"
  ID="7"
  curl --include --request DELETE http://localhost:4741/sign-out/$ID \
    --header "Authorization: Token token=$TOKEN"
