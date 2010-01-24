from django.contrib import admin

from photos.models import Photo

class PhotoAdmin(admin.ModelAdmin):
    list_display = ('get_list_image', 'caption', 'order',)
    list_editable = ('order','caption')

admin.site.register(Photo, PhotoAdmin)
