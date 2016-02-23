# Docker container for node.js/js security tools

Javascript tools, particularly those claiming security benefits are constantly changing. Finding and testing the really useful tools is time consuming. We hope to alleviate some of that burden by pre-selecting the best current tools out there and making them easy to test/integrate in your development pipeline.

# Tools 

| tool      | quick run                     | notes/more information                                                                          |
|-----------|--------------------------------|--------------------------------------------------------------------------------|
| eslint | eslint <flle> |                                                                                |

## Installation

Clone this repository:

```
git clone https://github.com/fabioarciniegas/docker-security-tools.git
```

Build the container:

```bash
docker build -t js_analysis docker-security-tools/js
```

Run the container:

```bash
docker run -it -p 3002:80 -v $(pwd):/codebase --name local_js_analysis js_analysis 
```

There are two important features enabled when running the container:
 - Port mapping (option `-p 3002:80`): allows you to access the web interface of the some tools
 - Volume sharing (option `-v /codebase [your code dir]`): allows you to share the directory containing your code with the container

an example with a specific code path:

```bash
docker run -it -p 3002:80 -v /home/fabio/my_js_project:/codebase --name local_js_analysis js_analysis
```

## Running the tools 

See the table at the top of this page for tools and their command options.

To get a command line into the container:

```bash
docker exec -it local_js_analysis
```


# Feedback

Missing something? would like to recommend a tool? contact us or better yet fork and submit your recommended tool as a merge requests.

