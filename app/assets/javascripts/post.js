
window.onload = function(){
   console.log('hello')
   var edit_icon = document.getElementById('article_update_icon');
   var edit_form = document.getElementById('edit_form_wrapper');
   var cancel_botton = document.getElementById('cancel_edit_botton'); 


  if (edit_icon !== null){
    edit_icon.addEventListener('click', function(){    	
      edit_form.style.visibility = 'visible'
    });

    cancel_botton.addEventListener('click', function(){
   	  edit_form.style.visibility = 'hidden';
    });
  }

   var comment_gear = document.getElementById('comment_create_gear');
   var comment_new_form = document.getElementById('comment_create_form');


   comment_gear.addEventListener('click', function(){
    console.log('test')
    if(comment_new_form.style.display == ''){    	
    	comment_new_form.style.display = 'block'
    } else{
    	comment_new_form.style.display = ''
    }
    });


  var comment_edit = document.getElementsByClassName('comment_update_icon')
  var comment_edit_form = document.getElementsByClassName('comment_update_form')

  for (let i=0; i<comment_edit.length; i++){
	  comment_edit[i].addEventListener('click', function(){
		if (comment_edit_form[i].style.display == 'block'){
			comment_edit_form[i].style.display = 'none'
		}  else {
		    comment_edit_form[i].style.display = 'block'
		}
  })
}


};
