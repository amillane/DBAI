% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gpt.data.frame.R
\name{gpt.data.frame}
\alias{gpt.data.frame}
\title{gpt}
\usage{
\method{gpt}{data.frame}(
  source,
  input,
  output = "output",
  prompt = "",
  model = "gpt-3.5-turbo",
  iterations = 1,
  repair = FALSE,
  progress = TRUE,
  temperature = NULL,
  top_p = NULL,
  presence_penalty = NULL,
  frequency_penalty = NULL,
  max_tokens = 4096,
  max_completion_tokens = NULL,
  logit_bias = NULL,
  logprobs = FALSE,
  top_logprobs = NULL,
  seed = NULL,
  stop = NULL,
  user = NULL,
  is_reasoning_model = NULL,
  reasoning_effort = NULL,
  openai_api_key = Sys.getenv("OPENAI_API_KEY"),
  openai_organization = NULL,
  call = rlang::caller_env(),
  parentInfo = NULL
)
}
\arguments{
\item{source}{required; A source dataframe or llm-completion object.}

\item{input}{required; A column name in the source dataframe.}

\item{output}{optional; A string of a column name (Or a vector of strings) to be created in the source dataframe storing the output of the models. Defaults to \code{output}.}

\item{prompt}{required; A string (Or vector of Strings for handling multiple operations at the same time) of prompts to be sent to the AI model.}

\item{model}{required; a length one character vector.}

\item{iterations}{optional; An integer. Number of completions to generate for each prompt Defaults to \code{1}.}

\item{repair}{optional; A boolean to repair NA's in the output column and keep values already present in the output column if the output column has already been created. False overrides the data already in an output column if it exists. Useful to continue a computation if you have been rate limited. Defaults to \code{FALSE}.}

\item{progress}{optional; a length one logical vector. Defaults to \code{TRUE}. Determines whether to show a progress bar in the console. Not available when using repair mode.}

\item{temperature}{optional; defaults to \code{1}; a length one numeric vector with the value between \code{0} (More analytical) and \code{2} (More creative).}

\item{top_p}{optional; defaults to \code{1}; a length one numeric vector with the value between \code{0} and \code{1}.}

\item{presence_penalty}{optional; defaults to \code{0}; a length one numeric vector with a value between \code{-2} and \code{2}.}

\item{frequency_penalty}{optional; defaults to \code{0}; a length one numeric vector with a value between \code{-2} and \code{2}.}

\item{max_tokens}{optional; defaults to \verb{(4096 - prompt tokens)}; a length one numeric vector with the integer value greater than \code{0}.}

\item{max_completion_tokens}{optional; defaults to \code{NULL}; used in OpenAI reasoning models; a numeric vector with the integer value greater than \code{0}. Specifies the maximum number of tokens to generate for each completion. This includes tokens generated as part of the reasoning process and are not returned to the user.}

\item{logit_bias}{optional; defaults to \code{NULL}; a JSON object that maps tokens (as specified by their toekn ID in the tokenizer) to an associated bias value. -100 to 100.}

\item{logprobs}{optional; defaults to \code{FALSE}. If \code{TRUE}, the API will return log probabilities for each token.}

\item{top_logprobs}{optional; An integer between \code{0} and \code{20}. Specifies the number of most likely tokens to return at each token position. The API will return log probabilities for the top \code{top_logprobs} tokens at each position. The \code{logprobs} must be set to \code{TRUE} to use this parameter.}

\item{seed}{optional; defaults to \code{NULL}. An integer that allows for reproducible results when using the same seed. (BETA)}

\item{stop}{optional; Defaults to \code{NULL}. A vector of strings (Up to length 4) of sequences where the API will stop generating further tokens.}

\item{user}{optional; defaults to \code{NULL}. A string that specifies the user ID to associate with the completion.}

\item{is_reasoning_model}{optional; defaults to \code{NULL}. A vector of booleans that specifies if the model is a reasoning model. If \code{TRUE}, the model will be treated as a reasoning model. Reasoning models use different model parameters and are optimized for reasoning tasks. OpenAI only.}

\item{reasoning_effort}{optional; defauls to \code{medium}. A vector of strings that specifies the effort level for the reasoning model. OpenAI only. Must be one of c(\code{low}, \code{medium}, \code{high}).}

\item{openai_api_key}{required; defaults to \code{Sys.getenv("OPENAI_API_KEY")} (i.e., the value is retrieved from the \code{.Renviron} file); a length one character vector. Specifies OpenAI API key. Must obtain API Key from OpenAI.}

\item{openai_organization}{optional; defaults to \code{NULL}; a length one character vector. Specifies OpenAI organization.}

\item{parentInfo}{Used internally. Do not supply.}
}
\value{
A dataframe with the output column(s) created
}
\description{
gpt
}
