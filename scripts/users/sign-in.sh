#!/bin/bash

curl --include --request POST http://localhost:4741/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "alex@kradin.com",
      "password": "1"
    }
  }'


  #!/bin/bash

    curl --include --request POST http://localhost:4741/sign-in \
      --header "Content-Type: application/json" \
      --data '{
        "credentials": {
          "email": "kradin@alex.com",
          "password": "1"
        }
      }'
