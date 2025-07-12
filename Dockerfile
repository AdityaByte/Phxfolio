# Dockerfile

FROM hexpm/elixir:1.14.5-erlang-25.3.2-alpine-3.18.0

# Install build dependencies using apk
RUN apk update && apk add --no-cache \
  git build-base curl unzip && \
  mix local.hex --force && \
  mix local.rebar --force

# Set working directory
WORKDIR /app

# Set environment
ENV MIX_ENV=prod

# Copy mix files and install deps
COPY mix.exs mix.lock ./
COPY config ./config
RUN mix deps.get --only prod

# Copy the entire app
COPY . .

# Compile & digest assets
RUN mix compile
RUN mix assets.deploy

# Build release
RUN mix release

# Expose port
EXPOSE 4000

# Start the app
CMD ["_build/prod/rel/phxfolio/bin/phxfolio", "start"]
