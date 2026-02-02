import requests
import os

class APIClient:
    def __init__(self):
        self.base_url = "https://jsonplaceholder.typicode.com"

    def get_post(self, post_id):
        response = requests.get(f"{self.base_url}/posts/{post_id}")
        self._save_evidence(response, f"get_post_{post_id}")
        return response

    def _save_evidence(self, response, name):
        if not os.path.exists("evidence"):
            os.makedirs("evidence")
        with open(f"evidence/api_{name}.txt", "w") as f:
            f.write(f"Status: {response.status_code}\nBody: {response.text}")