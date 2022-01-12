import boto3
ddb = boto3.client('dynamodb')
createResponse = ddb.create_table(
    AttributeDefinitions=[
        {
            'AttributeName':'pet_species',
            'AttributeType': 'S',
        }, 
        {
            'AttributeName':'pet_id',
            'AttributeType':'N'
        }
    ], 
    KeySchema=[
        {
            'AttributeName':'pet_species',
            'KeyType':'HASH'
        },
        {
            'AttributeName':'pet_id',
            'KeyType':'RANGE'
        },
    ],
    BillingMode = 'PAY_PER_REQUEST',
    TableName='PetInventory'
)