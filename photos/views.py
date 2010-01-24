from django.shortcuts import render_to_response, get_list_or_404
from django.template import RequestContext

from photos.models import Photo

def index(request):
    photos = get_list_or_404(Photo)
    return render_to_response('photos/index.html', {'photos': photos}, context_instance=RequestContext(request))
    