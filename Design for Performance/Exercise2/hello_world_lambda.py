import os

def lambda_handler(event, context):
    return "{} from Lambda!".format(os.environ['greeting'])
    print('## ENVIRONMENT VARIABLES')
    print(os.environ)
    print('## EVENT')
    print(event)