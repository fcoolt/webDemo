jQuery(function($) {
	$('.show-details-btn').on('click', function(e) {
		e.preventDefault();
		$(this).closest('tr').next().toggleClass('open');
		$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
	});
	
	// 选中/取消 全选
	var active_class = 'active';
	$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
		var th_checked = this.checked;//checkbox inside "TH" table header
		
		$(this).closest('table').find('tbody > tr').each(function(){
			var row = this;
			if(th_checked) {
				$(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
			} else {
				$(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
			}
		});
	});
	
	// 选中/取消 单选
	$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
		var $row = $(this).closest('tr');
		if($row.is('.detail-row ')) {
			return;
		}
		if(this.checked) {
			$row.addClass(active_class);
		} else {
			$row.removeClass(active_class);
		}
	});
		
});
