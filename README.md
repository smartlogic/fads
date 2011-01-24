## Facebook Ads - Facebook Ad generation and reporting

## Pickler Setup

Create a file named .tracker.yml in your home directory

Add the following line to that file using your own pivotal API key
    api_token: ....some api token....

## Pickler Usage

When starting a story:

    pickler start <story_id> -

This will start the story in pivotal and create a cucumber feature for it.

When finishing a story: 

    pickler finish <story_id>
