# Roadmap

This roadmap focuses on improvements that increase reliability, maintainability, and demo-readiness.

## Short Term (1–3 sessions)
- Add environment validation (`.env.example` + startup checks)
- Add quickstart scripts (Makefile targets)
- Add docs: architecture, roadmap, demo instructions

## Reliability
- Add unit tests for:
  - event filtering by date windows
  - reminder scheduling behavior
- Add a lightweight CI workflow to run tests on pull requests

## Product / Demo
- Add a `DEMO.md` with:
  - sample commands
  - sample output screenshots
  - a short "happy path" story
- Add a "seed and demo" script that:
  - seeds sample events
  - prints what WhatsApp would output for today/tomorrow/week

## Longer Term
- Replace JSON file storage with SQLite (still simple, far more robust)
- Provider abstraction to support more sources cleanly
- Add a simple web UI/dashboard for overview (optional)
