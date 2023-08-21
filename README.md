# Mac Setup
[https://andrewbreyen.github.io/mac-setup/](https://andrewbreyen.github.io/mac-setup/)

## Usage
This wiki is built with [MkDocs](https://www.mkdocs.org/). 

## Prerequises
- pip

## Setup
Install requirements: 
`pip install -r requirements.txt`

### Host Server:
`mkdocs serve`    
Page will be hosted on your local machine at URL [http://localhost:8000/](http://localhost:8000/)

### Deployments:
Github Actions automatically deploys changes made to the `main` branch. 
`mkdocs gh-deploy`