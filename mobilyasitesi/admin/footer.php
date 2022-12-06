<!-- Jquery Core Js -->
<script src="plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->
<script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!-- Slimscroll Plugin Js -->
<script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="plugins/node-waves/waves.js"></script>

<!-- Jquery CountTo Plugin Js -->
<script src="plugins/jquery-countto/jquery.countTo.js"></script>

<!-- Morris Plugin Js -->
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/morrisjs/morris.js"></script>

<!-- ChartJs -->
<script src="plugins/chartjs/Chart.bundle.js"></script>

<!-- Flot Charts Plugin Js 
<script src="plugins/flot-charts/jquery.flot.js"></script>
<script src="plugins/flot-charts/jquery.flot.resize.js"></script>
<script src="plugins/flot-charts/jquery.flot.pie.js"></script>
<script src="plugins/flot-charts/jquery.flot.categories.js"></script>
<script src="plugins/flot-charts/jquery.flot.time.js"></script>
-->
<!-- Sparkline Chart Plugin Js -->
<script src="plugins/jquery-sparkline/jquery.sparkline.js"></script>

<!-- Custom Js -->
<script src="js/pages/medias/image-gallery.js"></script>
<script src="js/admin.js"></script>
<script src="js/pages/index.js"></script>

<!-- Light Gallery Plugin Js -->
<script src="plugins/light-gallery/js/lightgallery-all.js"></script>

<!-- Light Gallery Plugin Js -->
<?php 
foreach ($js_array as $value) {
	?>
	<script src="<?php print $value ?>"></script>

	<?php
}
?>

<!-- Custom Js -->
<script src="js/pages/medias/image-gallery.js"></script>
<script src="js/admin.js"></script>

<!-- Custom Js -->
<script src="js/admin.js"></script>
<script src="js/pages/ui/tooltips-popovers.js"></script>

<!-- Demo Js -->
<script src="js/demo.js"></script>

<script type="text/javascript" src="plugins/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="plugins/ckeditor/sample.js"></script>

<script type="text/javascript">
	var roxyFileman = '../documents/index.html';
	function f_up_plugin(roxyFileman) {
		CKEDITOR.replace('Content',{filebrowserBrowseUrl:roxyFileman,
			filebrowserImageBrowseUrl:roxyFileman+'?type=image',
			removeDialogTabs: 'link:upload;image:upload'});
	}
	f_up_plugin(roxyFileman)
</script>

</body>

</html>