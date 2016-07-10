</head>
<meta charset="UTF-8">
<title>Preva | Admin</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link href="${request.getContextPath()}/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- FontAwesome 4.3.0 -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<%--<link href="${request.getContextPath()}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    --%>
<!-- Ionicons 2.0.0 -->
<%--
    <link href="${request.getContextPath()}/css/ionicons.min.css" rel="stylesheet" type="text/css" />    
    --%>
<!-- Theme style -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />

<link href="${request.getContextPath()}/plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

<link href="${request.getContextPath()}/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="${request.getContextPath()}/css/skins/_all-skins.min.css" rel="stylesheet"
	type="text/css" />
<!-- iCheck -->
<link href="${request.getContextPath()}/plugins/iCheck/flat/blue.css" rel="stylesheet"
	type="text/css" />
<!-- Morris chart -->
<link href="${request.getContextPath()}/plugins/morris/morris.css" rel="stylesheet"
	type="text/css" />
<!-- jvectormap -->
<link href="${request.getContextPath()}/plugins/jvectormap/jquery-jvectormap-1.2.2.css"
	rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="${request.getContextPath()}/plugins/datepicker/datepicker3.css"
	rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link href="${request.getContextPath()}/plugins/daterangepicker/daterangepicker-bs3.css"
	rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link
	href="${request.getContextPath()}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" />
<!-- bootstrap dataTable -->
<link rel="stylesheet" href="${request.getContextPath()}/css/chosen.css">
 <!-- Morris chart -->
    <link href="${request.getContextPath()}/plugins/morris/morris.css" rel="stylesheet" type="text/css" />




<script src="${request.getContextPath()}/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
<script src="${request.getContextPath()}/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<!-- DATA TABES SCRIPT -->
<script src="${request.getContextPath()}/plugins/datatables/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script src="${request.getContextPath()}/plugins/datatables/dataTables.bootstrap.min.js"
	type="text/javascript"></script>
<!-- SlimScroll -->
<script src="${request.getContextPath()}/plugins/slimScroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<!-- FastClick -->
<script src="${request.getContextPath()}/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="${request.getContextPath()}/js/app.min.js" type="text/javascript"></script>
<!-- AdminLTE for demo purposes -->
<script src="${request.getContextPath()}/js/demo.js" type="text/javascript"></script>
<!-- page script -->
<script src="${request.getContextPath()}/js/chosen.jquery.js" type="text/javascript"></script>
<script src="${request.getContextPath()}/plugins/daterangepicker/moment.min.js"
	type="text/javascript"></script>
<script src="${request.getContextPath()}/plugins/daterangepicker/daterangepicker.js"
	type="text/javascript"></script>
<script src="${request.getContextPath()}/plugins/input-mask/jquery.inputmask.js"
	type="text/javascript"></script>
<script
	src="${request.getContextPath()}/plugins/input-mask/jquery.inputmask.date.extensions.js"
	type="text/javascript"></script>
<script
	src="${request.getContextPath()}/plugins/input-mask/jquery.inputmask.extensions.js"
	type="text/javascript"></script>
<script src="${request.getContextPath()}/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="${request.getContextPath()}/js/alphanumeric.js" type="text/javascript"></script>
<!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="${request.getContextPath()}/plugins/morris/morris.min.js" type="text/javascript"></script>

<script type="text/javascript">
      $(function () {
    	  //Datemask dd/mm/yyyy
          $("#datemask").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
          //Datemask2 dd/mm/yyyy
          $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
          //Money Euro
          $("[data-mask]").inputmask();
        //Date range picker
        $('#fromDate').daterangepicker();
        $('#endDate').daterangepicker();
        $('#validUpToDate').daterangepicker("option", "disabled", false);
        //Date range picker with time picker
        //$('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
                {
                  ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                    'Last 7 Days': [moment().subtract('days', 6), moment()],
                    'Last 30 Days': [moment().subtract('days', 29), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                  },
                  startDate: moment().subtract('days', 29),
                  endDate: moment()
                },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );
      });
    </script>

<script type="text/javascript">
      $(function () {
        $("#example1").dataTable();     //{ "stateSave": true} add this statement for save state pagination Or    bStateSave": true
        $('#example2').dataTable({
          "bPaginate": true,
          "bLengthChange": false,
          "bFilter": false,
          "bSort": true,
          "bInfo": true,
          "bAutoWidth": false
        });
        $('#example3').dataTable({
            "bPaginate": true,
            "bLengthChange": true,
            "bFilter": true,
            "bSort": false,
            "bInfo": true,
            "bAutoWidth": true
          });
        $('#example4').dataTable({
            "bPaginate": false,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": false,
            "bInfo": false,
            "bAutoWidth": false
          });
      });
    </script>
</head>


