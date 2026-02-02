import sys
import os
import pytest
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '../../')))
from pages.API_Client import APIClient

def test_api_client_title():
    # Example test: replace with your actual test logic
    client = APIClient()
    # Example: assert client.get_title() == "Expected Title"
    # Remove or update the line below with your real test
    assert hasattr(client, '__class__')

def test_validate_title_post():
    client = APIClient()
    response = client.get_post(1)
    
    assert response.status_code == 200
    assert "sunt aut facere" in response.json()['title']