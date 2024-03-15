# Hadoop Multinode Cluster Development Environment with Pig using Docker and Docker Compose

## Description
This repository provides a Docker-based development environment for setting up a Hadoop multinode cluster along with Pig for data processing. It utilizes Docker and Docker Compose to simplify the setup process.

## Features
- Easily spin up a multinode Hadoop cluster environment for development and testing purposes.
- Includes Pig for data processing tasks.
- Docker and Docker Compose for seamless containerized deployment.

## Installation
To get started, follow these steps:

1. Clone this repository to your local machine:
   ```bash
   git clone https://gitlab.com/mahdiboughrous/hadoop3-multi-node-cluster.git
   ```
2. Navigate to the project directory:
    ```bash
    cd hadoop3-multi-node-cluster
    ```

3. Place your data files (e.g., CSV) in the shared-data folder. These files will be accessible in the /data folder in the `namenode` container.

4. Place your Pig scripts in the pig-scripts folder. These scripts will be accessible in the Pig container `pig-node`.

5. Build the Docker images:
    ```bash
    docker-compose build
    ```
6. Start the cluster using Docker Compose:
    ```bash
    docker-compose up -d
    ```

## Usage

Use the provided Hadoop cluster environment for your development and testing tasks.
Utilize Pig for data processing workflows.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/YourFeature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeature`).
5. Create a new Pull Request.

## License

This project is licensed under the [MIT License](https://gitlab.com/mahdiboughrous/hadoop3-multi-node-cluster/-/blob/a1ca45015cd425c9c2adfbe77ba3c06e0d3f20a6/LICENSE).

## Contact

For any questions or concerns, feel free to contact the project maintainer:

* [Mahdi Boughrous](mailto:mahdi@boughrous.com) 

