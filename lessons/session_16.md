# Session 16

## 1. Goals

- [x] Build our mock version of the sentiment extractor service.
- [x] Build our first(CustomSonnet4/LLM) version of the sentiment extractor service.
    - `sentiment_extractor.py` - Where the LLM model
    - `main.py` - Run the pipeline (ingest and output and LLM service from `sentiment_extractor.py`)
    - `config.py`
- [x] Evaluate  - Create a golden dataset with (input, expected_output) pairs using historical news from [here](https://github.com/soheilrahsaz/cryptoNewsDataset.git)
    - Keep golden dataset, monitor the result
    - oplik - Create the dataset to track the output from the LLM
- [x] Add a tricky example to the dataset
- [ ] how to curate the dataset with a human in the loop
    - You could use a full blown solution that allows collaborative work among several human reviewers like [Argila](https://argilla.io/)

    or 

    you can follow a pool man's approach and use the CLI we will build.

    
## Learning
baml cli -> transform to python code

- Evaluation
    - how reliable it is? No matter how cool or fancy.
    - Understand how good this model is, when it fails we know how to fix that

- You can use the @track decorator to track the performance of the sentiment extractor
- You can curate a fraction of production traces and add them to the golden dataset

Why would you want to log traces and end up adding them to the golden dataset?

Ans: Because the purpose of the golden dataset is to be used to evaluate the performance of the sentimient extractor. And for that you need CORRECT (input, expected output) pairs, that represent
ACTUAL INPUTS the model is seeing in production.

Golden dataset should have the recent dataset
Monitoring is the evaluation of the product
Product - How to evaluate and monitor day over day


Now, how do you verify a trace is correct before before pushing it to the golden dataset?

Method 1. (Human in the Loop)
Log all trace but only pick a small percentage of them to send to a human reviewer. The ones that are approved end up in the golden dataset.

different way of sampling.... what is the best way of sampling

Method 2. (Ensemble of LLMs voting)
You can send the same trace to N LLMs and consider the trace correct if at least X% of them agree on the expected output.

"What is the cost effective way to monitor an LLM app in production?"


- Human in the loop to curate this prompt or dataset