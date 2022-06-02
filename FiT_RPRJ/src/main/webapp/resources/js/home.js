$(document).ready(function(){
	$('#category').change(function(){
		alert(this.value);
		if(this.value == "europe"){
			location.href="/product/europe";
		}else if (this.value == "southeast asia"){
			location.href="/product/sasia";
		}else if (this.value == "japan"){
			location.href="/product/japan";
		}else if (this.value == "china"){
			location.href="/product/china";
		}else if (this.value == "mexico"){
			location.href="/product/mexico";
		}
	});
});