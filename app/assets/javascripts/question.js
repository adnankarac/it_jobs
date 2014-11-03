/*$(function(){

	function draw_answer_boxes(){
		$("#answers").empty();

		var times = $("#number_of_answers").val();
		for (var i = 0; i < times; i++) {
			var n = parseInt(i, 10) + 1;
			$("#answers").append('<label for="answer_' + i + '" >Odgovor ' + n + ': </label>');
			$("#answers").append('<input id="answer_' + i + '" name="answers[]" class="answer" type="text"></br>');
		};
	}

	$("#number_of_answers").on("keyup", draw_answer_boxes);
});
*/