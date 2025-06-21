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

## To run tests via Dockerfile
- `docker build .` - Build image as specified in Dockerfile in current directory
- `docker images`  - Display images that are currently present
- `docker run <image_id>` - Runs container made from docker image

## To run tests via docker-compose
- First build an image as specified in Dockerfile using `build` tag
- `docker-compose up` - Runs the container as specified in docker-compose.yml file in current directory

## Configuration
- **Playwright config:** `playwright.config.ts`
- **Cucumber config:** `config/cucumber.js`
- **Docker:** `Dockerfile`, `docker-compose.yml`
