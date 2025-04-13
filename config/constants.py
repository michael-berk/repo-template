from enum import Enum

# C denotes constants to be accessed globally
class C:
    class field_match_eval_config(Enum):
        endpoint_name: str = "databricks-meta-llama-3-1-8b-instruct"
        max_tokens: int = 10
        temperature: float = 0.01
        system_prompt: str = "field_match_eval_config/system_prompt"
        user_prompt: str = "field_match_eval_config/user_prompt"
