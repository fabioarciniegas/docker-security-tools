# Docker container for Quick Network Analysis tools

There are many security tools for the analysis of networks.  This is not a complete list by any means, but rather a "minimal recommended toolset" 

# Tools 

| tool      | quick run                     | notes/more information                                                                          |
|-----------|--------------------------------|--------------------------------------------------------------------------------|
| nmap | nmap |                                                                                |


## Installation

Clone this repository:

```
git clone https://github.com/fabioarciniegas/docker-security-tools.git
```

Build the container:

```bash
docker build -t net_analysis docker-security-tools/network-analysis
```

Run the container:

```bash
docker run -it nnmap
```

There are two important features enabled when running the container:
 - Port mapping (option `-p 3002:80`): allows you to access the web interface of the some tools
 - Volume sharing (option `-v /codebase [your code dir]`): allows you to share the directory containing your code with the container

an example with a specific code path:

```bash
docker run -it -p 3002:80 -v /home/fabio/my_php_project:/codebase --name local_php_analysis php_analysis
```

## Running the tools 

See the table at the top of this page for tools and their command options.

To get a command line into the container:

```bash
docker exec -it local_php_analysis
```


# Feedback

Missing something? would like to recommend a tool? contact us or better yet fork and submit your recommended tool as a merge requests.

