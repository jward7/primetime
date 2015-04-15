var request  = new XMLHttpRequest();

/*request.onreadystatechange = function() {

*//*    console.log('ready state has changed');
    console.log('readyState', this.readyState);
    console.log('readyText', this.responseText);*//**//*


    if (this.readyState === 4) { // ready state is 1-4.
        console.log('Done');
        document.write(this.responseText);
    }
};

request.open('GET', '/slow');
request.send();

console.log('AJAX request is probably still running')*/

$(document).ready(function() {
    $.getJSON('/api/speeds').done(function() {
        console.log('done');
    });
});