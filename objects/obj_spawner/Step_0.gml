repeat(10) {
    var index = irandom(7);
    if(index > 4)
        if(irandom(10) < 8)
            exit;
    with(instance_create(irandom_range(50, room_width - 50), irandom_range(50, room_height - 50), obj[index])) {
        image_angle = irandom(359);
        image_xscale = random_range(0.2, 1.4);
        image_yscale = image_xscale;
    }
}

