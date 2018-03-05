console.log('hello')
var update_user = document.getElementById('update_user');
var hidden_user_update = document.getElementById('hidden_user_update');
var cancel_botton = document.getElementById('cancel_botton');


if(update_user) {
update_user.addEventListener('click', function(){
	hidden_user_update.style.visibility = 'visible';
});
}

cancel_botton.addEventListener('click', function(){
	hidden_user_update.style.visibility = 'hidden';
})


// var coll = document.getElementsByClassName("new_post");
// var i;

// for (i = 0; i < coll.length; i++) {
//   coll[i].addEventListener("click", function() {
//     this.classList.toggle("active");
//     var content = this.nextElementSibling;
//     if (content.style.maxHeight){
//       content.style.maxHeight = null;
//     } else {
//       content.style.maxHeight = content.scrollHeight + "px";
//     } 
//   });
// }
