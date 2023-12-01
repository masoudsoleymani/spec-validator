# Spec validator
Use [OpenAPI Spec validator](https://github.com/python-openapi/openapi-spec-validator#openapi-spec-validator) in Ubuntu environment to validate an API Spec.

## Setup

- Run the container
```
docker compose up -d
```

- Enter the container 
```
docker compose exec ubuntu /bin/bash
```

- Install dependencies
```
cd /app && bash init.sh
```

- Validate a spec that is in /specs folder
```
openapi-spec-validator specs/openapi.json
```

- Stop the container
```
docker compose down
```