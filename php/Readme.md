# Docker container for php security tools

PHP tools, particularly those claiming security benefits are constantly changing. Finding and testing the really useful tools is time consuming. We hope to alleviate some of that burden by pre-selecting the best current tools out there and making them easy to test/integrate in your development pipeline.

# Tools 

| tool      | how to run                | notes                                                                          |
|-----------|---------------------------|--------------------------------------------------------------------------------|
| RIPS 0.55 | [[http://localhost:3001]] |                                                                                |
| Phan      | phan_wrapper.sh /codebase | wrappers generates a file list and passes it to phan [[http://bit.ly/1NYJJR2]] |

## Building the container

To build this container run:

```bash
docker build -t php_analysis docker-security-tools/php
```

## Running the container

There are two important features to enable when running the container:
 - Port mapping (option `-p 3002:80`): allows you to access the web interface of the tools
 - Volume sharing (option `-v /codebase [your code dir]`): allows you to share the directory containing your code with the container

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

# Feedback

Missing something? would like to recommend a tool? contact us or better yet fork and submit your recommended tool as a merge requests.

