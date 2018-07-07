<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

		<!-- basic scripts -->
		<!--[if !IE]> -->
		<script src="static/ace/1.4.0/components/jquery/dist/jquery.js"></script>
		<!-- <![endif]-->
		<!--[if IE]>
		<script src="static/ace/1.4.0/components/jquery.1x/dist/jquery.js"></script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='static/ace/1.4.0/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>"+"<"+"/script>");
		
			$(function(){
				$('.nav-user-photo').on('click', function(e) {
					e.preventDefault();
					e.stopPropagation();
					$('#changeAvatar').modal('show');
				});
			});
		</script>
		<script src="static/ace/1.4.0/components/bootstrap/dist/js/bootstrap.js"></script>
		
		<!-- page specific plugin scripts -->
		<!-- 数据列表及表单所需 -->
		<!-- <script src="static/ace/1.4.0/components/datatables/media/js/jquery.dataTables.js"></script>
		<script src="static/ace/1.4.0/components/_mod/datatables/jquery.dataTables.bootstrap.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-buttons/js/dataTables.buttons.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-buttons/js/buttons.flash.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-buttons/js/buttons.html5.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-buttons/js/buttons.print.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-buttons/js/buttons.colVis.js"></script>
		<script src="static/ace/1.4.0/components/datatables.net-select/js/dataTables.select.js"></script> -->
		<!-- 控制面板所需 -->
		<script src="static/ace/1.4.0/components/_mod/jquery-ui.custom/jquery-ui.custom.js"></script>
		<script src="static/ace/1.4.0/components/jqueryui-touch-punch/jquery.ui.touch-punch.js"></script>
		<script src="static/ace/1.4.0/components/_mod/easypiechart/jquery.easypiechart.js"></script>
		<script src="static/ace/1.4.0/components/jquery.sparkline/index.js"></script>
		<script src="static/ace/1.4.0/components/Flot/jquery.flot.js"></script>
		<script src="static/ace/1.4.0/components/Flot/jquery.flot.pie.js"></script>
		<script src="static/ace/1.4.0/components/Flot/jquery.flot.resize.js"></script>
		<!-- 编辑器所需 -->
		<!-- <script src="static/ace/1.4.0/components/markdown/lib/markdown.js"></script>
		<script src="static/ace/1.4.0/components/bootstrap-markdown/js/bootstrap-markdown.js"></script> -->
		<script src="static/ace/1.4.0/components/jquery.hotkeys/index.js"></script>
		<script src="static/ace/1.4.0/components/_mod/bootstrap-wysiwyg/bootstrap-wysiwyg.js"></script>
		<script src="static/ace/1.4.0/components/bootbox.js/bootbox.js"></script>
		<!-- 图片裁剪控件cropper -->
		<script src="static/cropper/dist/cropper.js"></script>
  		<script src="static/cropper/demo/js/main.js"></script>
		
		<!-- ace scripts -->
		<script src="static/ace/1.4.0/assets/js/src/elements.scroller.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.colorpicker.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.fileinput.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.typeahead.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.wysiwyg.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.spinner.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.treeview.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.wizard.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/elements.aside.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.basics.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.scrolltop.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.ajax-content.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.touch-drag.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.sidebar.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.sidebar-scroll-1.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.submenu-hover.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.widget-box.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.settings.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.settings-rtl.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.settings-skin.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.widget-on-reload.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.searchbox-autocomplete.js"></script>
		
		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="static/ace/1.4.0/assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="static/ace/1.4.0/docs/assets/js/themes/sunburst.css" />
		
		<script type="text/javascript"> ace.vars['base'] = '..'; </script>
		<script src="static/ace/1.4.0/assets/js/src/elements.onpage-help.js"></script>
		<script src="static/ace/1.4.0/assets/js/src/ace.onpage-help.js"></script>
		<script src="static/ace/1.4.0/docs/assets/js/rainbow.js"></script>
		<script src="static/ace/1.4.0/docs/assets/js/language/generic.js"></script>
		<script src="static/ace/1.4.0/docs/assets/js/language/html.js"></script>
		<script src="static/ace/1.4.0/docs/assets/js/language/css.js"></script>
		<script src="static/ace/1.4.0/docs/assets/js/language/javascript.js"></script>
		
		<!-- sunflower scripts -->
		<script src="static/js/webdemo-table.js"></script>
