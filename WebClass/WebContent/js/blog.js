//blog.html을 위한 js파일

function menu_on(mouse) {
	mouse.setAttribute("class", "nav-item active");
}
function menu_out(mouse) {
	mouse.setAttribute("class", "nav-item");
}

//login modal
$(document).ready(function() {
	$('#loginForm').submit(function(event) {
		event.preventDefault();
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		console.log(id, pwd);

		$.post("http://httpbin.org/post",
		{
			id : id,
			pwd : pwd
		}, function(data) {
			var loginModal = $('#loginModal');
			loginModal.modal();
			loginModal.find('.modal-body').text('<'+data.form.id + '>님 로그인되었습니다.');
		}); 
	});
	
	$('#signup').submit(function(event) {
		console.log("form submitted");
			
			event.preventDefault();
	
			var name = $('#name').val();
			$.post("http://httpbin.org/post",
			
			{
				name : name
			}, function(data) {
				
				var joinModal = $('#joinModal');
				joinModal.modal();
				joinModal.find('.modal-body').text('<'+data.form.name + '>님 로그인되었습니다.');
			});
	});
});