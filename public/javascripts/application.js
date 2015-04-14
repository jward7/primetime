<button>magic posts</button>

<!--
<script>
var doMagic = function(){
    $.ajax({
        url: '/api/posts',
        dataType: 'json'
    }).done(function(posts){

        for (var i=0; i<posts.length; i++){
            console.log(posts[i].title);

            var $newPost = $('<p>').html(posts[i].title);
            $('body').append($newPost);
        }
    });
};

$('button').on('click', doMagic);
</script>-->

<script>

var createPost = function(event) {
    event.preventDefault();

    $.ajax({
        url: '/api/posts',
        method: 'post',
        data: { title: $('#title').val()}
    }).done(function(returnedData){
        $('body').append('<p>' + returnedData.title + '</p>')
    }).fail(function(){
        console.log('it didnt work');
    });
};

$('#new-post-form').on('submit', createPost)

</script>