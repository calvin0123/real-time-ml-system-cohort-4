# Session 15

- [x] Build the `news` service that ingests news articles from Cryptoanic.
    - [x] Build the `NewsDownloader` class that downloads news articles from Crytopanic.
    - [x] Extract the cryptopanic api key as an env variable that gets into our Python code using pydantic-settings.
    - [x] Build a custom stateful source that ingests news articles from Crppytopanic.
    - [x] Put everything together in our `main.py` file.
    - [ ] Dockerize and deploy to Kubernetes cluster (HW)


- [ ] Build the `news-sentiment` service that ingests new articles from Kafka and output structured output with sentiment scores.
    - [x] Mock the LLM response and push score to `news_sentiment` Kafka topic.
    - [ ] Create a table in RisingWave to store the sentiment scores, that ingests from the `news-sentiment` Kafka topic. (Need to create the rising wave db)
    - [ ] Dockerize and deploy to Kubernetes cluster (HW)


- [ ] Build our first LLM powered sentiment extractor.
    - [ ]

## Learning
- Dataloader (rest api) -> datasource -> Main file to push to kafka topic
- Quixstream (real time service)


- What is the input, output
- Build a golden evaluation dataset
- Start iteration (From basic to advance)
    - Error analysis
    - Acception threshold