# Generated by Django 4.1.5 on 2023-04-05 18:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mental_user_management', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='advice',
            old_name='Patient',
            new_name='patient',
        ),
        migrations.RenameField(
            model_name='disease',
            old_name='Patient',
            new_name='patient',
        ),
    ]
