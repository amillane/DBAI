# DBAI (development version)

## Dev Version .9050
### Reasoning Model Support
* Added support for OpenAI reasoning models

### Bug Fixes
* Fixed a bug with automatic model_provider matching
* Fixed a bug with the pass-by-reference system for Gemini functions


## Dev Version .9030
### LLM_Generate now stable
* Fixed the last bugs with llm_generate. It now properly also works for data.frames


## Dev Version .9020
### S3 Refactor
* GPT, Claude, Gemini, and llm_generate function moved over to an S3 system
* This allows much more flexibility in how to use the functions (inside a mutate for example)

### Custom llm_completion return class
* Custom return class stores meta-data invisibly
* Can use summary() on the output to access hidden meta-data


## Dev Version .9010
### Documentation Update
* Github Pages and News are updated
