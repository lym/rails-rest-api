# Rails RESTful API Primer

This project showcases an approach to building RESTful APIs using Ruby
on Rails.

For now the main resource is a player, you know a participant in a
sport.

## Supported Functionality
### Retrieving a list of players
`GET /api/v1/players/`

### Retrieving an individual player
`GET /api/v1/players/<player id>/`

### Creating a player record

`POST/api/v1/players/` with a payload like:
```json
{
    "first_name": "Jimmy",
    "last_name": "Connors",
    "country": "American",
    "birth_date": "1994-12-23"
}
```

### Updating a player record
#### Partial update
`PATCH /api/v1/players/<player_id>/` with a payload like:
```json
{
    "first_name": "Jimmy",
}
```

#### Replacement
`PUT /api/v1/players/<player_id>/`
```json
{
    "first_name": "John",
    "last_name": "McEnro",
    "country": "American",
    "birth_date": "1998-12-23"
}

```

### Deleting a player
`DELETE /api/v1/players/<player_id>/`

### Deleting a player record


* Ruby version
Ruby v3.3

* System dependencies
Unix-based OS

* Configuration
N/A

* Database creation
```bash
$ rails db:create
$ rails db:migrate
$ rails db:seed:
```

* How to run the test suite
N/A

* Services (job queues, cache servers, search engines, etc.)
N/A

* Deployment instructions
N/A
