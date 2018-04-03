# FlipGive Feed Challenge

The API Endpoint details can be found below.

We'd LOVE for you to write tests!! We also value code which is clean, consistent, and easily understandable.

Once you are done, we can review your code together. Be prepared to explain why you chose to write it the way you did.

## Ruby on Rails

Fork/Clone this repo and implement the `/feed` endpoint. The goal is to render JSON for the activities which you will pull from the API. There are 2 types of activities: `shared` and `posted`... for the different activities, you will need to pull the related data using the additional endpoints provided below. The `object` field contains a string with the ID needed to pull.

Do your best to make it efficient. The API is written poorly (totally beyond our control), and responds in 500ms... so the fewer requests we can make the better.

The JSON being rendered should look like (changes slightly based on the activity):

```json
[
  {
    "verb": "posted",
    "actor": "My Name",
    "content": "I am quite hungry!",
    "description": "My Name posted I am quite hungry!"
  },
  {
    "verb": "shared",
    "actor": "My Name",
    "url": "https://www.flipgive.com",
    "description": "My Name shared https://www.flipgive.com"
  }
]
```

## Rails Bonus

Have the `/feed` endpoint respond in under 1 second.

## Endpoints

* https://feed-challenge-api.herokuapp.com/activities Index of activities
* https://feed-challenge-api.herokuapp.com/shares/1 An individual share.
* https://feed-challenge-api.herokuapp.com/shares?ids=1,2,3 Index of shares, filtered by comma separated list of ids.
* https://feed-challenge-api.herokuapp.com/posts/1 An individual post.
* https://feed-challenge-api.herokuapp.com/posts?ids=1,2,3 Index of posts, filtered by comma separated list of ids.
