#!/usr/bin/python3
"""
0. How many subs? reddit API
"""
import requests

def number_of_subscribers(subreddit):
    """How many subs? reddit """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {"User-Agent": "Mozilla/5.0"}
    res = requests.get(url, headers=headers, allow_redirects=False)
    try:
        return req.json()['data']['subscribers']
    except:
        return 0
