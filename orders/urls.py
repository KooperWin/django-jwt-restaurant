from django.urls import path, include
from rest_framework import routers
from .views import *

router = routers.DefaultRouter()

# define the router path and viewset to be used
router.register(r'status', StatusViewSet)
router.register(r'productsList', ProductsListViewSet)
router.register(r'', OrderViewSet)

# URLS
urlpatterns = [
    path('', include(router.urls)),
    path('view', OrderView.as_view()),
]
