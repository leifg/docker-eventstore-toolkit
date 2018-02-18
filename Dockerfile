FROM leifg/elixir:latest

# install postgres client
RUN apk add --no-cache postgresql-client git


RUN mix new es_wrapper

ADD project_skeleton/mix.exs /es_wrapper/mix.exs
ADD project_skeleton/config/config.exs /es_wrapper/config/config.exs
ADD entrypoint.sh /usr/local/bin

ENTRYPOINT ["entrypoint.sh"]

WORKDIR /es_wrapper

RUN mix deps.get
RUN mix compile
