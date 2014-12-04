<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">The Radar</a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#/radar">Radars</a></li>
				<li><a href="#/technology">Technologies</a></li>
				<li><a href="#">Skills Profile</a></li>
				<li><a href="#">Ricky Winterbourne  <img class="img img-rounded" src="/radar/img/128.jpg"></a></li>
			</ul>
		</div>
	</div>
</div>

<div class="container-fluid main-content">
	
	<div class="row">
	
	<form id="theForm" action="/radar/upload" method="post">
		<input hidden="true" id="id" name="id" value=""></input>
	</form>	
	
	<form id="csvExportForm" action="/radar/export/csv" method="post">
		<input hidden="true" id="id" name="id" value=""></input>
	</form>	
	
	<div class="col-md-12 clearfix" style="margin-bottom: 0;border-bottom: 1px solid #CCC;padding-bottom: 20px;">
		<div class="col-md-6">
			<h1><i class="glyphicon glyphicon-ok" style="color:green;"></i> <strong>Editing</strong> <span class="muted" style="margin-left:20px;">{{selectedRadar.name}}</span></h1>
		</div>
		<div class="col-md-6 text-right">
			<form id="uploadform" action="/radar/uploadcsv" method="post" target="theframe" enctype="multipart/form-data">
				<button class="btn btn-default" ng-click="exportCsv(selectedRadar.id)">Download Data</button>
				<input id="id" name="id" type="hidden"></input>
				<div id='file_browse_wrapper'>
					Upload Data
					<input type='file' id='fileinput' name="fileinput"></input>
				</div>
				<button class="btn btn-default" ng-click="doDelete(selectedRadar.id)">Delete</button>
				<button class="btn btn-primary" ng-click="doSave()">Save</button>
				<button class="btn btn-success">Publish</button>
			</form>
		</div>
	</div>
	
	<iframe id="theframe" name="theframe" style="display:none;"></iframe>

	<div class="col-md-12" style="background-color:#EFEFEF;padding:25px 20px;">
	
		<div class="col-md-12">
			<div class="alert alert-danger" role="alert" ng-repeat="error in errors">
				{{error}}
			</div>
		</div>
		
		<div class="col-md-12">
			<div class="alert alert-success" role="alert" ng-repeat="msg in msgs">
				{{msg}}
			</div>
		</div>
	
		<div class="col-md-12">
			<div class="col-md-6">
				<ul class="nav nav-pills">
					<li class="active"><a href="#">All</a></li>
					<li ng-repeat="quadrant in selectedRadar.radar.quadrants"><a href="#">{{quadrant.name}}</a></li>
				</ul>
			</div>
			<div class="col-md-6 text-right" style="padding:10px;">
				<div class="col-xs-6" style="padding:8px 0;">
					<span>Highest Skills</span>
				</div>
				<div class="col-xs-6">
					<select class="form-control">
						<option value="None">None</option>
					</select>
				</div>
			</div>
		</div>
		
		<div class="col-md-12" style="padding:50px 100px;">
			<div id="radar" ng-radar="" radar="selectedRadar.radar" selected-blip="selectedItem"></div>
		</div>
		
	</div>
		
	</div>
</div>