
from south.db import db
from django.db import models
from photos.models import *

class Migration:
    
    def forwards(self, orm):
        
        # Adding model 'Photo'
        db.create_table('photos_photo', (
            ('id', orm['photos.Photo:id']),
            ('photo', orm['photos.Photo:photo']),
            ('caption', orm['photos.Photo:caption']),
            ('order', orm['photos.Photo:order']),
        ))
        db.send_create_signal('photos', ['Photo'])
        
    
    
    def backwards(self, orm):
        
        # Deleting model 'Photo'
        db.delete_table('photos_photo')
        
    
    
    models = {
        'photos.photo': {
            'caption': ('django.db.models.fields.TextField', [], {'blank': 'True'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'order': ('django.db.models.fields.PositiveSmallIntegerField', [], {'blank': 'True'}),
            'photo': ('django.db.models.fields.files.ImageField', [], {'max_length': '100'})
        }
    }
    
    complete_apps = ['photos']
