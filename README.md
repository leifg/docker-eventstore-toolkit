# Create/Migrate your Commanded EventStore in Docker

If you have an existing eventstore and want to run creation and migration in a docker container, this will help you

```bash
docker run --rm \
  -e POSTGRES_USER=eventstore \
  -e POSTGRES_PASSWORD=eventstore \
  -e POSTGRES_HOST=postgres_host \
  -e POSTGRES_PORT=5432 \
  -e POSTGRES_DB=eventstore \
  leifg/eventstore-toolkit create
```

This will execute the mix tasks `event_store.create` and `event_store.init`.

You can runn `migrate` to run the mix task `event_store.migrate`
