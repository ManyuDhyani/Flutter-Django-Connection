import email
from django.db import models

class Student(models.Model):
    stuname = models.CharField(max_length=100)
    email = models.EmailField()