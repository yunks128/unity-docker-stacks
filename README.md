<!-- Header block for project -->
<hr>

<div align="center">

<h1 align="center">Unity Docker Stacks</h1>

</div>

<pre align="center">Custom Docker Stacks for Unity Jupyterlab Deployments</pre>
<!-- Header block for project -->

A set of Unity specific [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks). These Docker stacks contain additional tools and venue specific environments used by Unity users.

These stacks are [built automatically](https://github.com/orgs/unity-sds/packages?tab=packages&q=unity-docker-stacks) by Github actions but can be built locally for development purposes.

## Features

* unity\_datascience - Extends the base [Jupyter Data Science Stack](https://github.com/jupyter/docker-stacks/tree/main/datascience-notebook) with additional Unity tools
* sounder\_sips\_dev - Development environment for the JPL Sounder SIPS software. Replicates the local development environment. Used for the [sounder-sips-application](https://github.com/unity-sds/sounder-sips-application) Unity application.

## Contents

* [Quick Start](#quick-start)
* [License](#license)
* [Support](#support)

## Quick Start

To build locally all repositories use [Docker Compose](https://docs.docker.com/engine/reference/commandline/compose_build/):

	docker compose build
	
This will use the default values for ``DOCKER_GROUP`` and ``DOCKER_TAG`` variables in the [.env](.env) file to label the built images. Optionally supply one of the stack names after ``build`` to only build that image.

### Requirements

* Docker 

## License

See our: [License](License.txt)

## Support

Key points of contact are: 

* [@mcduffie](https://github.com/mcduffie) 
