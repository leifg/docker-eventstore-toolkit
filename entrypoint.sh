#!/bin/sh
#!/bin/sh

set -e

command=$1

if [ ${command} == "create" ]; then
  echo "Creating Eventstore"
  mix do event_store.create, event_store.init
elif [ ${command} == "migrate" ]; then
  echo "Migrate Eventstore"
  mix do event_store.migrate
else
  echo "Unknown command ${command}"
fi
