function exported(i) {
    return notExported(i) + 1;
}

function notExported(i) {
    return i*2;
}

exports.exported = exported;