from django.db.models import fields
from orders.models import *
from ristorante.serializers import *
from products.serializers import *
from users.serializers import *
from rest_framework import serializers


class Status_Serializer(serializers.ModelSerializer):

    class Meta:
        model = Status
        fields = ["id", "description"]


class Order_Serializer(serializers.ModelSerializer):
    #user = UserSerializer()
    #restaurant = RestauranteNameSerializer()
    #status = Status_Serializer()
    #listofproducts = serializers.StringRelatedField(many=True)

    class Meta:
        model = Order
        fields = '__all__'


class ProductsList_Serializer(serializers.ModelSerializer):
    #order = Order_Serializer()
    #product = ProductSerializer()

    class Meta:
        model = Productslist
        fields = ["id", "order", "quantity", "product", "notes"]
