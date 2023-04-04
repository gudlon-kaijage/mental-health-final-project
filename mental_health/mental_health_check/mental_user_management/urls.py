from django.contrib import admin
from django.urls import path
from . import views
from .views import *


urlpatterns = [
    ############################ Login $ logout API ###########################

    path('loginPage',views.loginPage),
    path('logoutPage',views.logoutPage),

    ############################ User ###########################
    
    path('ListUser',views.listUser),
    path('addUser',views.addUser),
    path('deleteUser/<str:pk>',views.deleteUser),
    path('editUser/<str:pk>',views.updateUser),
    path('showUser/<str:pk>',views.showUser),

    ############################ Disease ###########################
    
    path('addDisease',views.listDisease),
    path('addDisease',views.addDisease),
    path('deleteDisease/<str:pk>',views.deleteDisease),
    path('editDisease/<str:pk>',views.updateDisease),
    path('showDisease/<str:pk>',views.showDisease),

    ########################## Advice ####################
    
    path('addAdvice',views.addAdvice),
    path('listAdvice',views.listAdvice),
    path('editAdvice/<str:pk>',views.updateAdvice),
    path('deleteAdvice/<str:pk>',views.deleteAdvice),
    path('showAdvice/<str:pk>',views.showAdvice),

    ################## Progress #################

    path('addProgress',views.addProgress),
    path('listProgress',views.listProgress),
    path('editProgress/<str:pk>',views.updateProgress),
    path('deleteProgress/<str:pk>',views.deleteProgress),
    path('showProgress/<str:pk>',views.showProgress),


    ####################### Factor ###############################

    path('addFactor',views.addFactor),
    path('listFactor',views.listFactor),
    path('editFactor/<str:pk>',views.updateFactor),
    path('deleteFactor/<str:pk>',views.deleteFactor),
    path('showFactor/<str:pk>',views.showFactor),


    ####################### OtpCode ###############################

    path('addOtpCode',views.addOtpCode),
    path('listOtpCode',views.listOtpCode),
    path('editOtpCode/<str:pk>',views.updateOtpCode),
    path('deleteOtpCode/<str:pk>',views.deleteOtpCode),
    path('showOtpCode/<str:pk>',views.showOtpCode),

]
