from django.urls import path
from . import views

urlpatterns =[
    path('', views.index, name='index'),
    path('api/get', views.upload, name='upload'),
    path('api/upload', views.MulFileUploadView.as_view(), name='uploadf'),
    path('api/status', views.CheckStatusView.as_view(), name='checkStatus'),
    path('api/get_token', views.GetCSRFToken.as_view(), name= 'getToken')

]