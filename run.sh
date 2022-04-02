#Load Testing Data
#./data/load.sh events-and-workflows
#Create Order using Workflow
#curl -X POST -d '{"customerId":"customer-3","itemId":"item-1"}' -H "Content-Type: application/json" https://tmm357n4n9.execute-api.eu-central-1.amazonaws.com/Prod/order

#Cancel Delivery
#curl -i https://m9anya3qvf.execute-api.eu-central-1.amazonaws.com/delivery/cancel/customer-3/2022-04-02T19:07:35.125Z

#Create Order Not Available Item
#curl -X POST -d '{"customerId":"customer-3","itemId":"item-4"}' -H "Content-Type: application/json" https://tmm357n4n9.execute-api.eu-central-1.amazonaws.com/Prod/order

#Confirm Delivery
#curl -i https://m9anya3qvf.execute-api.eu-central-1.amazonaws.com/delivery/delivered/customer-3/2022-04-02T19:20:45.907Z

#Describe Order
#curl -i https://m9anya3qvf.execute-api.eu-central-1.amazonaws.com/order/describe/customer-1/2022-03-31T15:16:55.173Z

#Describe Payment
#curl -i https://m9anya3qvf.execute-api.eu-central-1.amazonaws.com/payment/describe/0fa227ba-aeb5-44f6-8967-bbb520313864

#Create Order Using Events
#curl -i https://m9anya3qvf.execute-api.eu-central-1.amazonaws.com/order/create/customer-2/item-2

#Confirm Delivery
#aws events put-events --entries file://./data/confirmDelivery.json

#Cancel Delivery
#aws events put-events --entries file://./data/cancelDelivery.json
