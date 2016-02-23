# docker-security-tools

These docker images provide a quick way to install pre-configured recommended tools in your local environment.

# Usage

Simply clone this repository and run docker on the directory of the tool you are interested in.
See Readme.md on each directory for details.


```
docker run -it code-analysis/php/Dockerfile
```

# Contribute

If you have a tool you think we all should use please feel free to fork and submit. But please keep in mind:

 - Keep  it light. The goal of this project is not to port all of Kali or every static analysis tool to docker containers. It is a curation effort intended to give 80% of usable results with minimum (less than 20% :) ) effort.

- Keep it automatic. If it requires more than one step of pre-configuration it probably doesn't belong here. This is a place for quick tools we can all leverage with minumum effort.

- Keep it diagnostic. The idea is to reuse sanity-check tools in development pipelines, not to replace Kali as a collection of hacking tools. 


