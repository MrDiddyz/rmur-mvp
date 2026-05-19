---
title: "ChatGPT for Gründere"
version: "1.0.0"
status: "production-ready"
owner: "Digital Product Team"
---

# 🚀 ChatGPT for Gründere

Bygg en AI-drevet innholds- og salgsmaskin på 10 moduler — strukturert for rask levering, høy kvalitet og skalerbar monetisering.

## Value Proposition

- **Fra kaos til system:** Tydelige moduler, leksjoner og leveranser.
- **Markdown-first:** Innhold kan flyttes til Notion, Framer, Teachable og LMS uten friksjon.
- **Bygd for salg:** Innebygd student-duplication kit og templates som øker fullføringsgrad.
- **AI-konsistens:** CURSOR/CLAUDE-regler + promptbibliotek sikrer lik tone og kvalitet.

## Quick Start

```bash
cd course-chatgpt-for-grundere
ls modules
cat docs/curriculum.json
```

1. Start med `modules/modul-01-strategisk-grunnmur/module.md`.
2. Kjør oppgaver i `assignments/` per modul.
3. Bruk prompts fra `prompts/` til produksjon av innhold.
4. Bruk `templates/student-duplication-kit.md` for elevens egen versjon.

## Module Overview

- **Modul 01 – Strategisk grunnmur:** nisje, posisjonering, offer-stack, AI-arbeidsflyt.
- **Modul 02 – AI innholdsengine:** content OS, prompt-kjeder, publiseringsrytme, kanaltilpasning.
- **Modul 03–10 (planlagt):** funnel, salgstekst, automasjoner, community, produktisering, skalering.

## Repository Structure

```text
course-chatgpt-for-grundere/
├── modules/
│   ├── modul-01-strategisk-grunnmur/
│   └── modul-02-ai-innholdsengine/
├── prompts/
├── assets/
├── templates/
├── automation/
├── docs/
├── CHANGELOG.md
├── CURSOR.md
├── CLAUDE.md
├── LICENSE
└── README.md
```

## Why this architecture

- **`modules/`**: alt kursinnhold med tydelig eierskap per modul.
- **`prompts/`**: sentral intelligens og gjenbrukbare prompt-systemer.
- **`templates/`**: produktifisering og duplisering for studentresultat.
- **`automation/`**: drift, konvertering og kvalitetssikring.
- **`docs/`**: dokumentasjon, curriculum-metadata og standarder.

## GitHub Actions (recommended)

- `course-pdf-export.yml`: genererer PDF fra `slides/*.md` og laster opp artifacts.
- `course-content-check.yml`: validerer frontmatter, døde lenker og struktur.

Begge workflows er lagt inn i `.github/workflows/`.

## Contribution Guidelines

1. Én modul per PR når du gjør større innholdsendringer.
2. Alle sentrale markdown-filer skal ha frontmatter.
3. Oppdater `docs/curriculum.json` ved endring i modulstatus.
4. Oppdater `CHANGELOG.md` for synlige forbedringer.

## License & Monetization Note

Dette repoet er lisensiert med **All Rights Reserved** for kommersiell kursdistribusjon.
Bruk i undervisning, videresalg eller white-label krever eksplisitt skriftlig avtale.

