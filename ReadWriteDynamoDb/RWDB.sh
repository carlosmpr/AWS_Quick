#!/bin/sh

### Put item to dynamodbtable with aws sdk.
aws dynamodb\
    put-item\
     --table-name PetInventory\
     --item\
     '
     {
    "age": {
        "N": "4"
    },
    "color": {
        "S": "Moss"
    },
    "gender": {
        "S": "Male"
    },
    "name": {
        "S": "Duncan"
    },
    "pet_id": {
        "N": "319"
    },
    "pet_species": {
        "S": "Monitor Lizard"
    },
    "scale_texture": {
        "S": "Spiky"
    }
    }'

    ### Delete Item from Dynamodbtable with aws sdk


    aws dynamodb\
    delete-item\
     --table-name PetInventory\
     --key\
     '
     }
      "pet_species": 
        {
            "S": "Monitor Lizard"
        },

        pet_id": 
        {
            "N": "319"
        }
    }
     '