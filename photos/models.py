from django.db import models
from django.utils.translation import ugettext_lazy as _

from sorl.thumbnail.fields import ImageWithThumbnailsField

class Photo(models.Model):
    photo = ImageWithThumbnailsField(verbose_name=_("Foto"), upload_to="photos/", thumbnail={
        'size': (240,240),
        'options': ['sharpen'],
    })
    caption = models.TextField(verbose_name=_("Beschreibung"), blank=True)
    order = models.PositiveSmallIntegerField(verbose_name=_("Reihenfolge"), blank=True)
    
    class Meta:
        ordering = ('order',)
    
    def __unicode__(self):
        return self.caption or "(Ohne Titel)"
    
    def get_list_image(self):
        return self.photo.thumbnail_tag
    get_list_image.allow_tags = True
    get_list_image.short_description = _("Foto")
    
    def save(self, force_insert=False, force_update=False):
        if not self.order:
            self.order = Photo.objects.aggregate(models.Max('order'))['order__max'] + 1
        super(Photo, self).save(force_insert, force_update)
