window.onload = function(){
   
   var edit_icon = document.getElementById('article_update_icon');
   var edit_form = document.getElementById('edit_form_wrapper');
   var cancel_botton = document.getElementById('cancel_edit_botton'); 

   if(edit_icon){
   edit_icon.addEventListener('click', function(){    	
    	edit_form.style.visibility = 'visible'
    });
}

cancel_botton.addEventListener('click', function(){
	edit_form.style.visibility = 'hidden';
})

};
