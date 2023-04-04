from django import forms
from pyexpat import model
from rest_framework import serializers
from .models import *
from django.contrib.auth.models import User

class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = '__all__'


class DiseaseSerializer(serializers.ModelSerializer):

    class Meta:
        model = Disease
        fields = '__all__'

class AdviceSerializer(serializers.ModelSerializer):

    class Meta:
        model = Advice
        fields = '__all__'

class ProgressSerializer(serializers.ModelSerializer):

    class Meta:
        model = Progress
        fields = '__all__'

class FactorSerializer(serializers.ModelSerializer):
    # access_Level = Access_LevelSerializer
    
    class Meta:
        model = Factor
        fields = '__all__'
        
class OtpCodeSerializer(serializers.ModelSerializer):
    # access_Level = Access_LevelSerializer
    
    class Meta:
        model = OtpCode
        fields = '__all__'

