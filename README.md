# What's Academy — Better Calendar

![CI](https://github.com/nchachn/better-calendar/actions/workflows/ci.yml/badge.svg)

Multi-source calendar integration with WhatsApp-driven interactions and local event management.

> **Status:** MVP / prototype showcase on this fork  
> Upstream: `webboy/better-calendar`

## Scope
This fork focuses on presentation polish, configuration hygiene (`.env.example`), and a minimal CI sanity check. Core integrations may require credentials to run.

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
- User verification flow
- HTML email templates

## Demo (example flow)
```text
/help
/calendar add 2026-02-24 10:00 "Project kickoff"
/calendar list
/remind 2026-02-23 18:00 "Prepare slides"
```

## Quickstart (local)
> Integrations require credentials. See `.env.example`.

```bash
git clone https://github.com/nchachn/better-calendar.git
cd better-calendar
cp .env.example .env
make help
```

Run options (depending on your setup):

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
