from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.exceptions import AuthenticationFailed
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated

from .serializers import *
from .models import *
from users.views import verify_token


class StatusViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Status.objects.all()
    serializer_class = Status_Serializer


class OrderViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Order.objects.all()
    serializer_class = Order_Serializer


class ProductsListViewSet(ModelViewSet):
    permission_classes = [IsAuthenticated]
    queryset = Products_list.objects.all()
    serializer_class = ProductsList_Serializer


class OrderView(APIView):
    def get(self, request):
        payload = verify_token(request)
        orde = Order.objects.all()
        serializer = Order_Serializer(orde, many=True)
        return Response(serializer.data)

    def post(self, request):
        pass

    def delete(self, request):
        pass

    def put(self, request):
        pass

    def patch(self, request):
        pass
