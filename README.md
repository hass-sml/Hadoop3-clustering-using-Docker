## This Repository was made by @mahdiboughrous
# 🐳 Dockerized Hadoop 

This repository provides Docker configurations for easily deploying Hadoop within containers, offering various setup options.

## Table of Contents

- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
 - [Single-Node Setup](#single-node-setup)
 - [Multi-Node Setup](#multi-node-setup)
 - [Additional Configurations](#additional-configurations)
- [Usage](#usage)
- [Contributing](#contributing) 
- [License](#license)

## Introduction ✨

Dockerized Hadoop streamlines the process of running Apache Hadoop in a containerized environment. It offers adaptability in configuring both single-node and multi-node Hadoop clusters.

## Prerequisites 

Before getting started, ensure you have the following:

- **Docker:** [Install Docker](https://docs.docker.com/get-docker/) 
- **Docker Compose:** [Install Docker Compose](https://docs.docker.com/compose/install/) for streamlined management of multi-container setups.

## Getting Started 🚀

### Multi-Node Setup

1. **Clone the repository:**

   ```bash
   git clone [https://github.com/mahdiboughrous/dockerized-hadoop.git](https://github.com/mahdiboughrous/dockerized-hadoop.git)
   ```
2. Navigate to the directory:
 ```bash
   cd dockerized-hadoop/multi-node
```
3. Build the Docker image:
 ```bash
   docker compose build
```
4. start the Docker image:
 ```bash
   docker compose up -d
 ```

## Additional Configurations 🔧

Find more specialized configurations within the repository, including options for Pig, Hive, and other components.

## Usage

## Contributing 🙌

We appreciate your help in improving this repository! Submit issues or pull requests for bug fixes, enhancements, or new features.

## License ⚖️ 

This project adheres to the MIT License. 
