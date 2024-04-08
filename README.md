
# LanguagueModelTranslator

This is a learning project to make an ai which can talk with you and give voice responses, the idea is based on the famous streamer ai "Neuro-sama" but simpler, to learn how to implement ai models on custom architectures and use them later on blender models 


## Features

- Using GPT-based model to generate responses
- Support to many input languagues
- Self-hosted, so as long as you host it on your computer, it's free
- Easy Deployment


## Deployment

You need to install [Docker](https://www.docker.com/) and [Python](https://www.python.org/) (recommended 3.10<)

First clone the project and her submodules:

```bash
  git clone --recurse-submodules https://github.com/csilvamarq/LanguagueModelTranslator.git
``` 

There are two ways to deploy this project:

### Using start script:

in the root folder run:

in windows:

```bash
  .\start.sh
```

in linux:

```bash
  ./start.sh
```

### Manual deploy:

#### LibreTranslate:

initialize text translator docker container
```bash
  cd LibreTranslate
```


windows:

```bash
  ./start.bat
```

linux/macOS:

```bash
  .\start.sh
```

#### llama-gpt:

initialize Text-GPT model docker container (By default executes 7B model)

```bash
  cd llama-gpt
```

in windows:

```bash
  .\start.sh
```

in linux:

```bash
  ./start.sh
```

#### soundbox

Initialize text-to-voice encoder docker container and voice to text transcriber

```bash
  cd soundbox-project
```
initialize encoder container
```bash
  docker compose up -d
```
initialize transcriber
```bash
  python3 index.py
```







   

## Roadmap

these are the objectives of this project:

- Implement AI-model-Docker based architecture ✔️
- Transcribe human voice to voice encoder ✔️
- Transcribe human voice into GPT-model and get response
- Implement project into Unity rig
- Make a GUI to control everything

## Related

This project uses two modules from other github repositories

- [LibreTranslate](https://github.com/LibreTranslate/LibreTranslate)
- [llama-gpt](https://github.com/getumbrel/llama-gpt)



## Authors

- [@csilvamarq](https://github.com/csilvamarq)

