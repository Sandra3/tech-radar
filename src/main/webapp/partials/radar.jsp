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
	
		<div class="col-md-12 clearfix" style="margin-bottom: 0;border-bottom: 1px solid #CCC;padding-bottom: 20px;">
			<div class="col-md-6">
				<ul class="nav nav-pills">
					<li  class="active"><a href="#">All</a></li>
					<li><a href="#">UK Services</a></li>
					<li><a href="#">Cyber</a></li>
					<li><a href="#">Communications</a></li>
					<li><a href="#">My Radars</a></li>
				</ul>
			</div>
			<div class="col-md-3">
				<div class="search-wrapper">
					<input type="text" class="form-control typeahead" placeholder="Search"></input>
					<i class="glyphicon glyphicon-search"></i>
				</div>
			</div>
			<div class="col-md-3 text-right">
				<button class="btn btn-success" ng-click="newRadarVisible=true">New Radar</button>
			</div>
		</div>
		
		<div ng-new-radar="" visible="newRadarVisible" radar-created="onRadarCreated(radar)"></div>
		
		<div class="col-md-12" style="background-color:#EFEFEF;padding:25px 20px;">
	
			<div ng-repeat="radar in radars" class="radar-card">
				<div style="margin-bottom: 20px;">
					<div class="col-xs-6">
						{{radar.name}}
					</div>
					<div class="col-xs-6 text-right">
						<i class="glyphicon glyphicon-ok" style="color:green;"></i>
					</div>
				</div>
				<div style="text-align:center;">
					<img src="/radar/img/radar_175.svg"></img>
				</div>
				<div>
					<img class="img img-rounded" src="/radar/img/128.jpg">
					<div style="padding-left:60px;">
						<div><strong>Ricky Winterbourne</strong></div>
						<div><small>(UK Services)</small></div>
						<div><small>Published <strong>{{radar.dateCreated | date:'dd MMM yy'}}</strong></small></div>
					</div>
				</div>
				<div>
					<button class="btn btn-primary btn-block" ng-click="go('/radar/' + radar.id)">View</button>
				</div>
			</div>
			
		</div>
		
	</div>
</div>