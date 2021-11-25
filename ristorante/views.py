from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated

from .serializers import *
from .models import *
from users.views import verify_token


class AddressViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Address.objects.all()
    serializer_class = AddressSerializer


class RestaurantViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Restaurant.objects.all()
    serializer_class = RestaurantSerializer


class RestaurantView(APIView):
    def get(self, request):
        payload = verify_token(request)
        restaur = Restaurant.objects.all()
        serializer = RestaurantSerializer(restaur, many=True)
        return Response(serializer.data)
    
    def post(self,request):
        pass

    def delete(self,request):
        pass

    def put(self,request):
        pass

    def patch(self,request):
        pass