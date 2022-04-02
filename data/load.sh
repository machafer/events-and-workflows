if [[ -z "$1" ]] ; then
    echo 'Format: load.sh <stack-name>'
    exit 1
fi

export INVENTORY_TABLE=$(aws cloudformation describe-stacks --stack-name $1 \
  --query 'Stacks[0].Outputs[?OutputKey==`InventoryTable`].OutputValue' --output text) 

echo "Loading sample data to the INVENTORY_TABLE (${INVENTORY_TABLE}) ..."

aws dynamodb put-item --table-name $INVENTORY_TABLE --item file://./data/inventory1.json
aws dynamodb put-item --table-name $INVENTORY_TABLE --item file://./data/inventory2.json
aws dynamodb put-item --table-name $INVENTORY_TABLE --item file://./data/inventory3.json

echo "Done!"

export CUSTOMER_TABLE=$(aws cloudformation describe-stacks --stack-name $1 \
  --query 'Stacks[0].Outputs[?OutputKey==`CustomerTable`].OutputValue' --output text) 

echo "Loading sample data to the CUSTOMER_TABLE (${CUSTOMER_TABLE}) ..."

aws dynamodb put-item --table-name $CUSTOMER_TABLE --item file://./data/customer1.json
aws dynamodb put-item --table-name $CUSTOMER_TABLE --item file://./data/customer2.json
aws dynamodb put-item --table-name $CUSTOMER_TABLE --item file://./data/customer3.json

echo "Done!"
