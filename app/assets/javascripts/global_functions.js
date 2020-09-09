function accessibleClick(event) {
    if (event.type === 'click') {
        return true;
    } else if (event.type === 'keypress') {
        var code = event.charCode || event.keyCode;
        if ((code === 32) || (code === 13)) {
            return true;
        }
    } else {
        return false;
    }
}

