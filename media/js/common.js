$(document).ready(function() {
    $('.gallery').each(function() {
        var prev = $('<a href="#prev" class="gallery-prev">&laquo;</a>');
        prev.data('direction', -1);
        var next = $('<a href="#next" class="gallery-next">&raquo;</a>');
        next.data('direction', +1);
        var gallery_nav = $('<div class="gallery-nav" />');
        gallery_nav.append(prev," ",next);
        $(this).append(gallery_nav);
        
        if (window.location.hash && window.location.hash.substr(1).match(/^\d+$/)) {
            $('.photo:nth-child(' + window.location.hash.substr(1) + ')').addClass('start');
        } else {
            $('.photo:first').addClass('start');
        }
        
        $('.photo', this).not('.start').hide();
        $(next).add(prev).click(function(e) {
            e.preventDefault();
            var gallery = $(this).parents('.gallery');
            var current = $('div.photo:visible', gallery);
            var next;
            if ($(this).data('direction') == 1) {
                next = $(current).next('div.photo:hidden');
                if (!$(next).length) next = $('div.photo:first', gallery);
            } else if ($(this).data('direction') == -1) {
                next = $(current).prev('div.photo:hidden');
                if (!$(next).length) next = $('div.photo:last', gallery);
            }
            current.fadeOut(500);
            next.fadeIn(500);
            
            window.location.hash = '#' + ($(next).prevAll('.photo').length+1);
        });
    });
});