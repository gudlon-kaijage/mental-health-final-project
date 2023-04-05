from django.shortcuts import render

# Create your views here.
from django.contrib.auth import authenticate, login, logout
import email
import re
from unicodedata import category
from rest_framework.exceptions import AuthenticationFailed
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import *
from .serializer import *
from django.contrib.auth import authenticate,login
from rest_framework.decorators import api_view
import requests
from django.views.decorators.csrf import csrf_exempt
import datetime

@api_view(['GET','POST'])
def loginPage(request):
    password = request.data['Password']
    username = request.data['username']
    user =authenticate(username=username, password=password)
    if user:
        login(request, user)
        return Response({"status":True})
    else:
        return Response({"status":False})

@api_view(['GET','POST'])
def logoutPage(request):
    logout(request)
    return Response({"status":True})

@api_view(['GET','POST'])
def addUser(request):

    serializer = UserSerializer(data=request.data)

    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listUser(request):
    user =User.objects.all()
    serializer = UserSerializer(user,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showUser(request,pk):
    user = User.objects.filter(id=pk).first()
    serializer = UserSerializer(user)
    return Response(serializer.data)


@api_view(['GET','POST'])
def updateUser(request,pk):
    user = User.objects.get(id=pk).first()

    if(user):
        serializer = UserSerializer(instance=user,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

    return Response({"error":"error while updating"})

def deleteUser(request,pk):
    user = User.objects.filter(id=pk).delete()
    if(user):
        return Response({"success":"deleted successful"})
    else:
        return Response({"error":"error while deleting"})


@api_view(['GET','POST'])
def addDisease(request):

    serializer = DiseaseSerializer(data=request.data)

    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listDisease(request):
    disease = Disease.objects.all()
    serializer = DiseaseSerializer(disease,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showDisease(request,pk):
    disease = Disease.objects.filter(id=pk)
    serializer = DiseaseSerializer(disease,many=True)


    return Response(serializer.data)
    
@api_view(['GET','POST'])
def updateDisease(request,pk):
     disease = Disease.objects.get(id=pk)

     if(Disease):
        serializer = DiseaseSerializer(instance=disease,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

     return Response({"error":"error while updating"})

@api_view(['GET','POST'])
def deleteDisease(request,pk):
     disease = Disease.objects.filter(id=pk).delete()
     if(disease):
      return Response({"success":"deleted successful"})

     return Response({"error":"error while deleting"})

@api_view(['GET','POST'])
def addAdvice(request):

    serializer = AdviceSerializer(data=request.data)
    
    print(serializer)
    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listAdvice(request):
    advice = Advice.objects.all()
    serializer = AdviceSerializer(advice,many=True)
    return Response(serializer.data)

@api_view(['GET','POST'])
def showAdvice(request,pk):
    advice = Advice.objects.filter(id=pk)
    serializer = AdviceSerializer(advice)


    return Response(serializer.data)
    
@api_view(['GET','POST'])
def updateAdvice(request,pk):
     advice = Advice.objects.get(id=pk)

     if(advice):
        serializer = AdviceSerializer(instance=advice,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

     return Response({"error":"error while updating"})

@api_view(['GET','POST'])
def deleteAdvice(request,pk):
     advice = Advice.objects.filter(id=pk).delete()
     if(advice):
      return Response({"success":"deleted successful"})

     return Response({"error":"error while deleting"})

@api_view(['GET','POST'])
def addProgress(request):

    serializer = ProgressSerializer(data=request.data)
    print(serializer)
    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listProgress(request):
    progress = Progress.objects.all()
    serializer = ProgressSerializer(progress,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showProgress(request,pk):
    progress = Progress.objects.filter(name= pk)
    serializer = ProgressSerializer(progress,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showProgressbyNameId(request,pk, Pid):
    progress = Progress.objects.filter(name= pk, priority = Pid)
    serializer = ProgressSerializer(progress,many=True)


    return Response(serializer.data)
    
@api_view(['GET','POST'])
def updateProgress(request,pk):
     progress = Progress.objects.get(name=pk)

     if(progress):
        serializer = ProgressSerializer(instance=Progress,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

     return Response({"error":"error while updating"})

@api_view(['GET','POST'])
def deleteProgress(request,pk):
     progress = Progress.objects.filter(id=pk).delete()
     if(progress):
      return Response({"success":"deleted successful"})

     return Response({"error":"error while deleting"})

@api_view(['GET','POST'])
def addFactor(request):

    serializer = FactorSerializer(data=request.data)

    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listFactor(request):
    factor = Factor.objects.all()
    serializer = FactorSerializer(factor,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showFactor(request,pk):
    factor = Factor.objects.filter(id=pk)
    serializer = FactorSerializer(factor,many=True)


    return Response(serializer.data)
    
@api_view(['GET','POST'])
def updateFactor(request,pk):
     factor = Factor.objects.get(id=pk)

     if(factor):
        serializer = FactorSerializer(instance=factor,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

     return Response({"error":"error while updating"})

@api_view(['GET','POST'])
def deleteFactor(request,pk):
     factor = Factor.objects.filter(id=pk).delete()
     if(factor):
      return Response({"success":"deleted successful"})

     return Response({"error":"error while deleting"})

@api_view(['GET','POST'])
def addOtpCode(request):

    serializer = FactorSerializer(data=request.data)

    serializer.is_valid(raise_exception=True )
    serializer.save()
    print(serializer.errors)
    return Response(serializer.data)

@api_view(['GET','POST'])
def listOtpCode(request):
    otpCode = OtpCode.objects.all()
    serializer = OtpCodeSerializer(otpCode,many=True)


    return Response(serializer.data)

@api_view(['GET','POST'])
def showOtpCode(request,pk):
    otpCode = OtpCode.objects.filter(id=pk)
    serializer = OtpCodeSerializer(otpCode,many=True)


    return Response(serializer.data)
    
@api_view(['GET','POST'])
def updateOtpCode(request,pk):
     otpCode = OtpCode.objects.get(id=pk)

     if(otpCode):
        serializer = OtpCodeSerializer(instance=otpCode,data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response(serializer.data)

     return Response({"error":"error while updating"})

@api_view(['GET','POST'])
def deleteOtpCode(request,pk):
     otpCode = OtpCode.objects.filter(id=pk).delete()
     if(otpCode):
      return Response({"success":"deleted successful"})

     return Response({"error":"error while deleting"})

