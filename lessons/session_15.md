# Session 15

- [ ] Build the `news` service that ingests news articles from Cryptoanic.
    - [x] Build the `NewsDownloader` class that downloads news articles from Crytopanic.
    - [x] Extract the cryptopanic api key as an env variable that gets into our Python code using pydantic-settings.
    - [ ] Build the `NewsDataSource`


- Dataloader (rest api) -> datasource -> Main file to push to kafka topic
- Quixstream (real time service)