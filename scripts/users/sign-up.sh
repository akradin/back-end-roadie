#!/bin/bash

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "alex@kradin.com",
      "password": "1",
      "password_confirmation": "1"
    }
  }'

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "kradin@alex.com",
      "password": "1",
      "password_confirmation": "1"
    }
  }'
