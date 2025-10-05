# Session 17

## 1. Goals

- [x] Implement the `SameScoreMetric` and run a full evaluation of our model on the `new-sentiment-dataset-live`
- [x] Manual prompt optimization
- [ ] Automatic prompt optimization
    - [DSpy](https://github.com/stanfordnlp/dspy)
- [ ] Integrate `SentimentExtractor` with Ollama OS models.
    - [x] Download `ollama` 
- [x] Try deepseek-r:1:7b, deepseek-r1:8b
- [ ] Dockerize and deploy to local Kubernetes cluster
    - [ ] Dockerize and deploy the `news` service
    - [ ] Dockerize and deploy the `news-sentiment` service


### how to evaluate on a single example using ollama

- How to optimize, 
    1. use the same prompt with the costly LLM model and see the output. 
        If is ideal, we switch to the cheaper
    2. Switch to cheaper model with the same prompt -> so we know where is the issue -> model
    3. Check the result

```bash
make evaluate-tricky-example MODEL=openai-generic/phi3:latest      
```

### Python Libraries for automatic prompt optimization
    - [DSpy](https://github.com/stanfordnlp/dspy)
    - [Adalflow]