/*!
 * Start Bootstrap - SB Admin v6.0.1 (https://startbootstrap.com/templates/sb-admin)
 * Copyright 2013-2020 Start Bootstrap
 * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
 */
(function($) {
	"use strict";
	$(document).ready(function() {
		$("#defaultInline1").prop("checked", false);
		$("#defaultInline2").prop("checked", false);
		$("#defaultInline3").prop("checked", false);
		$("#defaultInline4").prop("checked", false);
		$("#defaultInline5").prop("checked", false);
		$("#defaultInline6").prop("checked", false);
		$("#defaultInline7").prop("checked", false);
		$("#defaultInline8").prop("checked", false);
		$("#defaultInline9").prop("checked", false);
		$("#productName").change(function() {
			var type = $("#productName").val();
			if (type == "Bánh mì trứng chiên") {
				$("#defaultInline1").prop("checked", true);
				$("#defaultInline2").prop("checked", false);
				$("#defaultInline3").prop("checked", false);
				$("#defaultInline4").prop("checked", false);
				$("#defaultInline5").prop("checked", false);
				$("#defaultInline6").prop("checked", true);
				$("#defaultInline7").prop("checked", false);
				$("#defaultInline8").prop("checked", false);
				$("#defaultInline9").prop("checked", true);
			} else if (type == "Bánh mì cá") {
				$("#defaultInline1").prop("checked", false);
				$("#defaultInline2").prop("checked", false);
				$("#defaultInline3").prop("checked", true);
				$("#defaultInline4").prop("checked", false);
				$("#defaultInline5").prop("checked", false);
				$("#defaultInline6").prop("checked", true);
				$("#defaultInline7").prop("checked", false);
				$("#defaultInline8").prop("checked", false);
				$("#defaultInline9").prop("checked", true);
			} else if (type == "Bánh mì thịt") {
				$("#defaultInline1").prop("checked", false);
				$("#defaultInline2").prop("checked", false);
				$("#defaultInline3").prop("checked", false);
				$("#defaultInline4").prop("checked", false);
				$("#defaultInline5").prop("checked", false);
				$("#defaultInline6").prop("checked", true);
				$("#defaultInline7").prop("checked", true);
				$("#defaultInline8").prop("checked", true);
				$("#defaultInline9").prop("checked", true);
			} else if (type == "Bánh mì không") {
				$("#defaultInline1").prop("checked", false);
				$("#defaultInline2").prop("checked", false);
				$("#defaultInline3").prop("checked", false);
				$("#defaultInline4").prop("checked", false);
				$("#defaultInline5").prop("checked", false);
				$("#defaultInline6").prop("checked", false);
				$("#defaultInline7").prop("checked", false);
				$("#defaultInline8").prop("checked", false);
				$("#defaultInline9").prop("checked", false);
			}
		});
	});
})(jQuery);
