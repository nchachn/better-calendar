# What's Academy — Better Calendar
[![CI](https://github.com/nchachn/better-calendar/actions/workflows/ci.yml/badge.svg)](https://github.com/nchachn/better-calendar/actions/workflows/ci.yml)

Multi-source calendar integration with WhatsApp-driven interactions and local event management.

Status: Integration-focused MVP (credentials required)

Upstream: `webboy/better-calendar`

## Scope

This fork includes my contributions to core functionality, repo hygiene (CI and configuration), and product presentation/marketing deliverables, while maintaining upstream credit. Core integrations may require credentials to run.

## Authorship

Primary authors and credited contributors:
- **nchachn (Nikoloz Chachia)** — core feature development, and product/presentation deliverables
- **webboy** — core implementation and repository maintenance
- **FluffyKillerCat (Joud Hajal)** — core implementation

This repository is a continuation of upstream: `webboy/better-calendar`.

## Features

### Multi-source calendar integration
- Google Calendar sync
- Calendly integration
- Masterschool calendar sync
- Local calendar management

### WhatsApp integration
- Event notifications
- Command-line interface via WhatsApp
- Interactive event management

### Email verification
- Secure user verification process
- HTML email templates

## Demo (video walkthrough)

Short product walkthrough showing:
- WhatsApp interaction flow
- Event creation + listing
- Reminder scheduling
- System startup

[![Watch the demo](https://img.youtube.com/vi/dht9Jkz8Mo0/0.jpg)](https://youtu.be/dht9Jkz8Mo0)

## Commands (actual)

The current WhatsApp router uses `!`-prefixed commands:

- `!register <email>`
- `!validate <email> <code>`
- `!events [today|tomorrow|YYYY-MM-DD]`
- `!reminder <time>`
- `!hello`

## Required environment variables

Copy `.env.example` to `.env` and set the relevant fields:

### App
- `ENV`
- `LOG_LEVEL`

### Google Calendar
- `GOOGLE_CLIENT_ID`
- `GOOGLE_CLIENT_SECRET`
- `GOOGLE_REDIRECT_URI`
- `GOOGLE_REFRESH_TOKEN`

### WhatsApp provider
- `WHATSAPP_PROVIDER`
- `WHATSAPP_TOKEN`
- `WHATSAPP_FROM_NUMBER`
- `WHATSAPP_WEBHOOK_SECRET`

### Email provider
- `EMAIL_PROVIDER`
- `SMTP_HOST`
- `SMTP_PORT`
- `SMTP_USER`
- `SMTP_PASS`
- `EMAIL_FROM`

## Smoke test

Ensure the environment boots and the dependencies resolve:

```bash
make install
pytest -q
```

## Quickstart (local)

> Integrations require credentials. See `.env.example`.

```bash
git clone https://github.com/nchachn/better-calendar.git
cd better-calendar
cp .env.example .env
make help
```

Common run patterns (depending on your setup):

```bash
make run
# or:
python app.py
```

## Project structure

- `app/` — application modules (integrations, services)
- `cli/` — command-line utilities
- `storage/` — persistence layer
- `tests/` — tests
- `docs/` — docs and roadmap
- `app.py` — main entrypoint

## License

MIT — see `LICENSE`.
