# Architecture

## Data Model
- `app/models/event.py`

## Providers (Ingestion)
- `app/services/google_calendar_service.py`
- `app/services/calendly_service.py`
- Masterschool import via `cli/import_masterschool.py`

## Storage
- `storage/events.json`

## Event Service (Business Logic)
- `app/services/event_service.py`
  - date-window filtering (today/tomorrow/week)
  - query + reminder selection

## Messaging
- `app/services/twilio_service.py` (WhatsApp via Twilio)
- `app/services/email_service.py` (email verification)

## High-level Flow
1. Import events from sources
2. Normalize into internal model
3. Persist to `storage/events.json`
4. WhatsApp webhook commands query Event Service
5. Twilio sends results/reminders
