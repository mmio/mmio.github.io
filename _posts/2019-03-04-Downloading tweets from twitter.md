---
layout: post
title: Downloading tweets from twitter
author: Dominik Vasko
---
## Intro

## Requirements
You will need Python, and the library tweepy also you can basicly use
any ID, I personally recomment to get a list of them from "here" for
example.

The tweepy library can be easily installed with the following command:

```bash
# python2
pip install tweepy
# python3
pip3 install tweepy
```

## Twitter APP
To access the twitter API you will have to create a twitter app and
register as a deveoper further instructions "here".

## The API
### Get access
To initialize tweepy and get access to the Twitter API you will need
to use the following functions plus you also need access tokens and
consumer access tokens.

```python
def get_api_access():
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    api = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)
    return api
```

Usually when you exceed request limits the program will throw an error
and exit. To negate that and tell tweepy to wait you can set the
wait_on_rate_limit to True.

### Load the IDs
(In the code below we assume that all the ids are in a csv file wihich
has its first field as tweet ids)

The main function we need is:

```python
tweets = api.statuses_lookup(ids, tweet_mode='extended')
```

This allows use to send requests to the Twitter API. There are 2
arguments used here, the first one is an array of tweet ids(this can
also be a single id number not an array) the second one tells the api
to fetch tweets longer then 140 characters(this restriction was
removed and extended to 260 characters)

This function returns an array of tweets that can be traversed to get
all the retrieved tweets.

### Download the tweets

The tweets array contains items which are the individual tweets. You
can access various fields the one we want is the full_text field which
gives use the full tweet text.

We also have to be aware that retweets don't have their full_text(it
is still truncated to 140 characters). We can check for retweets and
get the text from the source.

All you need now is to save those thweets, here the file save_file is
used for that. We save one tweet per line.

```python
if 'retweeted_status' in tweet._json:
	save_file.write(tweet.retweeted_status.full_text.replace('\n', '')) 
else:
	save_file.write(tweet.full_text.replace('\n', ''))
save_file.write('\n')
```

## Full code
```python
import csv
import json
import tweepy
import argparse

argparser = argparse.ArgumentParser()
argparser.add_argument('csv_file', type=str, help='CSV file with the first row as tweet ids')
argparser.add_argument('dest_file', type=str, help='Destination file for all the tweets')
args = argparser.parse_args()

csv_filename = args.csv_file
save_as = args.dest_file

consumer_key = ''
consumer_secret = ''
access_token = ''
access_token_secret = ''


def get_api_access():
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    api = tweepy.API(auth, wait_on_rate_limit=True, wait_on_rate_limit_notify=True)
    return api


def get_ids(rate_of_ids):
    with open(csv_filename) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        count = 0
        tweet_ids = []

        for row in csv_reader:
            tweet_ids.append(row[0])
            count += 1
            if count == rate_of_ids:
                count = 0
                yield tweet_ids
                tweet_ids = []
        yield tweet_ids


def main():
    api = get_api_access()
    id_gen = get_ids(rate_of_ids=100)

    counter = 0
    with open(save_as, 'w+') as save_file:
        for ids in id_gen:
            counter += len(ids)
            tweets = api.statuses_lookup(ids, tweet_mode='extended')
            
            for tweet in tweets:
                if 'retweeted_status' in tweet._json:
                    save_file.write(tweet.retweeted_status.full_text.replace('\n', '')) 
                else:
                    save_file.write(tweet.full_text.replace('\n', ''))
                save_file.write('\n')
            print('\r' + str(counter), end='')


if __name__ == '__main__':
    main()
```
