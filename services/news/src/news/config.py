from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(
        env_file='services/news/settings.env', env_file_encoding='utf-8'
    )

    cryptopanic_api_key: str
    polling_interval_sec: int = 10
    kafka_broker_address: str
    kafka_output_topic: str


config = Settings()
# print(settings.model_dump())
