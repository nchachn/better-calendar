# What's Academy — Better Calendar

Multi-source calendar integration with WhatsApp-driven interactions and local event management.

> **Status:** Active development on this fork (**15 commits ahead** of upstream).
> Upstream: `webboy/better-calendar`

## Authorship
Primary authors and credited contributors:

- **nchachn (Nikoloz Chachia)** — core feature development, integrations, and product/presentation deliverables
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

## Quickstart (local)
> Integrations require credentials. See `.env.example`.

```bash
git clone https://github.com/nchachn/better-calendar.git
cd better-calendar
cp .env.example .env
make help
```

Run patterns (depending on your setup):

```bash
make run
# or
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
