# Code Companion Node.js TypeScript Template

This repository provides a template for building Fastify-based Node.js applications using TypeScript. It includes a pre-configured setup for development, testing, linting, and deployment.

## Features

- **Fastify Framework**: A fast and low-overhead web framework for Node.js.
- **TypeScript**: Strongly typed JavaScript for better developer experience.
- **Environment Configuration**: `.env` support via `dotenv`.
- **Testing**: Pre-configured with `node:test` and `supertest`.
- **Linting**: Code linting and formatting using Biome.
- **Docker Support**: Dockerfile for containerized deployment.
- **GitHub Actions**: CI/CD pipeline for building, linting, and testing.
- **Dependabot**: Automated dependency updates.

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) (version `22.15.0` recommended, see `.nvmrc`)
- [Docker](https://www.docker.com/) (optional, for containerized deployment)

### Installation

1. Use this repository as a template:

   - Click the **"Use this template"** button on the [GitHub repository page](https://github.com/CodeCompanionBE/code-companion-node-ts-template).
   - Create a new repository based on this template.

2. Clone your newly created repository:

   ```bash
   git clone ...
   cd your-repo-name
   ```

3. Install dependencies:

   ```bash
   npm install
   ```

4. Copy the example environment file and configure it:

   ```bash
   cp .env.example .env
   ```

### Development

Start the development server with hot-reloading:

```bash
npm run dev
```

The server will run on `http://localhost:3000` by default.

### Testing

Run the test suite:

```bash
npm test
```

### Linting

Lint the codebase:

```bash
npm run lint
```

### Docker

Build the Docker image:

```bash
npm run docker:build
```

Run the Docker container:

```bash
npm run docker:run
```

### CI/CD

This repository includes a GitHub Actions workflow for building, linting, and testing the application. The workflow is triggered on pushes and pull requests to the `main` branch.

## Project Structure

```
.
├── src
│   ├── routes          # Fastify route definitions
│   ├── server.ts       # Fastify server setup
│   └── index.ts        # Application entry point
├── .github
│   └── workflows       # GitHub Actions workflows
├── .vscode             # VS Code settings
├── Dockerfile          # Docker configuration
├── package.json        # Project metadata and scripts
├── tsconfig.json       # TypeScript configuration
└── .env.example        # Example environment variables
```

## Scripts

- `npm run dev`: Start the development server.
- `npm test`: Run tests.
- `npm run lint`: Lint the codebase.
- `npm run docker:build`: Build the Docker image.
- `npm run docker:run`: Run the Docker container.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes with clear and concise messages.
4. Submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Author

Created by [Niels Van den Broeck](https://github.com/CodeCompanionBE).

## Acknowledgments

- [Fastify](https://www.fastify.io/) for the web framework.
- [TypeScript](https://www.typescriptlang.org/) for type safety.
- [Docker](https://www.docker.com/) for containerization.
