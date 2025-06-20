# Playwright + Cucumber + Docker Project

This project demonstrates end-to-end testing using [Playwright](https://playwright.dev/), [Cucumber](https://cucumber.io/), and Docker for containerized test execution. It follows the Page Object Model (POM) pattern for maintainable and scalable test automation.

## Features
- **Playwright** for browser automation
- **Cucumber** for BDD-style feature files and step definitions
- **TypeScript** for type safety
- **Docker** for consistent, isolated test runs
- **Page Object Model** for reusable page logic

## Project Structure
```
├── config/                # Configuration files
├── pages/                 # Page Object Model classes
├── src/
│   └── helper/            # Helpers, managers, utilities
│       └── env/           # Environment configs
│   └── test/
│       ├── features/      # Cucumber feature files
│       ├── hooks/         # Cucumber hooks and fixtures
│       ├── steps/         # Step definitions
│       └── world/         # Custom Cucumber World
├── Dockerfile             # Docker image definition
├── docker-compose.yml     # Docker Compose setup
├── package.json           # NPM dependencies and scripts
├── playwright.config.ts   # Playwright configuration
├── tsconfig.json          # TypeScript configuration
└── README.md              # Project documentation
```

## Getting Started

### Prerequisites
- [Docker](https://www.docker.com/get-started) installed
- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) (for local runs)

### Install Dependencies
```bash
npm install
```

### Run Tests Locally
```bash
npm run test
```

### Run Tests in Docker
Build and run tests using Docker Compose:
```bash
docker-compose up --build
```

## Writing Tests
- Add feature files in `src/test/features/`
- Implement step definitions in `src/test/steps/`
- Add or update page objects in `pages/`

## Useful Commands
- `npm run test` — Run all tests
- `npm run test:debug` — Run tests in debug mode (if configured)
- `docker-compose up --build` — Build and run tests in Docker

## Configuration
- **Playwright config:** `playwright.config.ts`
- **Cucumber config:** `config/cucumber.js`
- **Docker:** `Dockerfile`, `docker-compose.yml`

## Reports
- Test reports are generated in `cucumber.json` and can be extended for HTML or other formats.

## Troubleshooting
- Ensure Docker has access to your project directory.
- If you encounter permission issues, try running Docker with elevated privileges or adjust file permissions.

## License
MIT