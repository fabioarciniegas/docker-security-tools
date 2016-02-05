# Docker container for php security tools

PHP tools, particularly those claiming security benefits are constantly changing. Finding and testing the really useful tools is time consuming. 

This container installs the best free static analysis tools for php we are aware of, and pre-configures them in one easy-to-run place.

# Tools included

| tool      | how to run                | sample |
| RIPS 0.55 | [[http://localhost:3001]] |       |
|           |                           |       |
|           |                           |       |
|           |                           |       |

Missing something? would like to recommend a tool? contact us.

## Build the container

To build this container run:

```bash
docker build -t php_analysis docker-security-tools/php
```

## Run the container

```bash
docker run -it -p 3002:80 php_analysis --name local_php_analysis
```

Once built you will be able to access it via [[http://localhost:3002]]

## Running tools inside this container

First start bash in the container:

```bash
docker exec -it local_php_analysis
```

Now see the table at the top of this page for tools and their command options.
