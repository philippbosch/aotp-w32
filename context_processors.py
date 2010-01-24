def settings(request):
    from django.conf import settings

    accessible_settings = {}
    try:
        propagate = settings.SETTINGS_TO_PROPAGATE_TO_CONTEXT
    except:
        return {}

    for setting_name in propagate:
        value = getattr(settings, setting_name)
        accessible_settings[setting_name] = value
    return accessible_settings


def site(request):
    from django.contrib.sites.models import Site
    site = Site.objects.get_current()
    return { 'site': site }
