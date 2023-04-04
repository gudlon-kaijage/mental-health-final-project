from django.db import models
from django.contrib.auth.models import User
import datetime
# Create your models here.
# class Patient(models.Model):
#     name = models.CharField(max_length=100)
#     email = models.EmailField()
#     age = models.IntegerField()
#     gender = models.CharField(max_length=10)
#     medical_history = models.TextField(blank=True)
#     current_medications = models.TextField(blank=True)

class Disease(models.Model):
    name = models.CharField(max_length=100)
    Patient = models.ManyToManyField(User)
    # description = models.TextField()

class Advice(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    diseases = models.ManyToManyField(Disease)
    Patient = models.ManyToManyField(User)

class Progress(models.Model):
    patient = models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField()
    mood = models.CharField(max_length=100)
    thoughts = models.TextField(blank=True)
    triggers = models.TextField(blank=True)
    coping_strategies = models.TextField(blank=True)
    advice = models.ManyToManyField(Advice, blank=True)

class Factor(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    diseases = models.ManyToManyField(Disease)

class OtpCode(models.Model):
    code = models.CharField(max_length=100)
    is_used = models.BooleanField(default = False)
    user = models.ForeignKey(User, on_delete= models.CASCADE)
    date_created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
    
    def get_status(self): 
        date = datetime.datetime(self.date_created.year, self.date_created.month, self.date_created.day, self.date_created.hour +3, self.date_created.minute, self.date_created.second)
        
        if date > self.date_created:
            return 'Valid'
        else:
            return 'Invalid'