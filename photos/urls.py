from django.conf.urls.defaults import *

urlpatterns = patterns('photos.views',
    url(r'^$', 'index', name="photos_index"),
)
