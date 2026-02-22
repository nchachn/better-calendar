# What's Academy — Better Calendar

![CI](https://github.com/nchachn/better-calendar/actions/workflows/ci.yml/badge.svg)

Multi-source calendar integration with WhatsApp-driven interactions and local event management.

> **Status:** MVP / prototype showcase on this fork
> Upstream: `webboy/better-calendar`

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

## Demo (example flow)

Example WhatsApp-style interaction (simulated):

```bash
/help
# Available commands:
# /calendar add <datetime> "<title>"
# /calendar list
# /remind <datetime> "<message>"

/calendar add 2026-02-24 10:00 "Project kickoff"
# Event created: Project kickoff at 2026-02-24 10:00

/calendar list
# 1. 2026-02-24 10:00 — Project kickoff

/remind 2026-02-23 18:00 "Prepare slides"
# Reminder scheduled for 2026-02-23 18:00
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
