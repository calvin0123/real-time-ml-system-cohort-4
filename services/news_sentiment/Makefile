download-historical-news:
	./download_historical_news.sh

dataset:
	uv run src/news_sentiment/dataset.py \
    --input_news data/cryptopanic_news.csv \
    --dataset_name news-sentiment-dataset-live \
    --samples 10 \
    --teacher_model claude-opus-4-20250514

tricky-example:
	uv run src/news_sentiment/dataset.py \
    --input_news "Pau Labarta Bajo thinks that Goldman Sacks will buy 1B BTC, and sell 1B ETH" \
    --dataset_name news-sentiment-dataset-live \
    --teacher_model claude-opus-4-20250514

curate-dataset:
	uv run src/news_sentiment/curate_dataset.py \
    --dataset_name news-sentiment-dataset-live

evaluate:
	uv run src/news_sentiment/evaluate.py \
    --dataset_name news-sentiment-dataset-live \
    --model $(MODEL)

evaluate-tricky-example:
	uv run src/news_sentiment/evaluate.py \
    --dataset_name news-sentiment-dataset-live \
    --model $(MODEL) \
    --dataset_item_id 01990db7-c4c4-7032-baf1-6cdb51d419c0