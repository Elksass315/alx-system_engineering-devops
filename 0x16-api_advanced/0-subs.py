#!/usr/bin/python3
"""
0. How many subs? reddit API
"""
import requests

def number_of_subscribers(subreddit):
    """
        How many subs? reddit API
        :arg
            subreddit: username

        :return number of subscribers
    """

    req = requests.get(f"https://www.reddit.com/r/{subreddit}/about.json", 
            allow_redirects=False)
    try:
        return req.json()['data']['subscribers']
    except:
        return 0
