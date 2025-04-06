# Nginx Server Demo

This repository contains a simple Nginx server setup with GitHub Actions integration.

## Features

- Nginx web server running in Docker container
- Custom HTML pages and Nginx configuration
- GitHub Actions workflow for automated testing
- Docker Compose configuration for local development

## Project Structure

```
├── .github/workflows/    # GitHub Actions workflow configurations
├── html/                 # Web content served by Nginx
│   ├── index.html        # Homepage
│   └── 50x.html          # Error page
├── Dockerfile            # Docker configuration
├── docker-compose.yml    # Docker Compose configuration
├── nginx.conf            # Nginx server configuration
└── README.md             # This file
```

## Running Locally

### Using Docker Compose

1. Clone this repository:
   ```
   git clone https://github.com/Kevin-Mathew24/nginx-server-demo.git
   cd nginx-server-demo
   ```

2. Start the server using Docker Compose:
   ```
   docker-compose up
   ```

3. Visit `http://localhost:8080` in your browser to see the Nginx server in action.

### Using Docker Directly

1. Build the Docker image:
   ```
   docker build -t nginx-server-demo .
   ```

2. Run the container:
   ```
   docker run -d -p 8080:80 --name nginx-server nginx-server-demo
   ```

3. Visit `http://localhost:8080` in your browser.

## GitHub Actions Workflow

The GitHub Actions workflow in this repository:

1. Builds the Docker image
2. Runs the Nginx server
3. Tests if the server is running correctly
4. Takes a screenshot of the running webpage
5. Uploads the screenshot as an artifact

You can view the workflow runs in the Actions tab of this repository.

## Customizing

- Modify the HTML files in the `html/` directory to change the content
- Update `nginx.conf` to change the Nginx server configuration
- Modify the Dockerfile or docker-compose.yml to adjust the container settings

## License

This project is open source and available under the [MIT License](LICENSE).