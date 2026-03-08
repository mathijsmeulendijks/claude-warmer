# claude-warmer

Keeps your Claude subscription warm by sending a daily ping at 5:05, 10:05, and 15:05 via the `claude` CLI.

## Setup

```sh
# 1. Build the image
docker compose build

# 2. Login with your Claude subscription (opens browser)
./login.sh

# 3. Start the daemon
docker compose up -d
```

## Test

```sh
docker compose run --rm warmer claude -p "Hi"
```

## Notes

- Credentials are stored in a named Docker volume (`claude-credentials`) and persist across restarts.
- To change the schedule, edit the `crontab` file and rebuild.
