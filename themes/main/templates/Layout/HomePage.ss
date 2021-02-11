<div id="home">
	<div id="<% loop Menu(1) %><% if Pos == 1 %>$MenuTitle<% end_if %><% end_loop %>"></div>
	<div id="frame1" class="banner-holder bg-cover" style="background:url('$F1BG.URL') no-repeat center">
		<div class="banner-text-holder vertical-parent half-width">
			<div class="vertical-align banner-text center-align">
				<div class="bg-white-overlay  m-padding fade-in">
					<div class="text-header m-padding-b">
						<h1 class="color-blue bold">$BannerHeader</h1>
					</div>
					<div class="details">
						<p>$BannerText</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="<% loop Menu(1) %><% if Pos == 2 %>$MenuTitle<% end_if %><% end_loop %>"></div>
	<div id="frame2" class="container vertical-parent">
		<div class="vertical-align border-xxl border-xxl-r margin-parent-m">
			<div class="about-holder">
				<div class="inlineBlock-parent by-3 about-content fade-in-up">
					<div class="center-align">
						<div class="icon-holder m-padding-b">
							<img src="$F2IMG1.URL" alt="Icon">
						</div>
						<div class="title-holder">
							<h5 class="upcase">$Frame2Header1</h5>
						</div>
						<div class="details-holder">
							<p>$Frame2Desc1</p>
						</div>
					</div
					><div class="center-align">
						<div class="icon-holder m-padding-b">
							<img src="$F2IMG2.URL" alt="Icon">
						</div>
						<div class="title-holder">
							<h5 class="upcase">$Frame2Header2</h5>
						</div>
						<div class="details-holder">
							<p>$Frame2Desc2</p>
						</div>
					</div
					><div class="center-align">
						<div class="icon-holder m-padding-b">
							<img src="$F2IMG3.URL" alt="Icon">
						</div>
						<div class="title-holder">
							<h5 class="upcase">$Frame2Header3</h5>
						</div>
						<div class="details-holder">
							<p>$Frame2Desc3</p>
						</div>
					</div
					>
				</div>
			</div>
		</div>
	</div>
	<div id="<% loop Menu(1) %><% if Pos == 3 %>$MenuTitle<% end_if %><% end_loop %>"></div>
	<div id="frame3" class="services-holder">
		<div class="bg-white-overlay frame3-inner">
			<div class="border-xxl border-xxl-r">
				<div class="center-align fade-in-left">
					<h3 class="color-blue bold l-margin-b">$Frame3Header</h3>
				</div>
				<div class="frame3-desc">
					<p>$Frame3Desc</p>
				</div>
				<div class="frame3-slider-holder inlineBlock-parent by-3 center-align">
					<div class="frame3-slider">
						<% loop $ServicePhotos %>
						<a href="{$Image.URL}" data-lightbox="{$Image.URL}">
						  <div class="service-img-details-holder">
						  	<div class="service-img-details vertical-parent">
						  		<div class="vertical-align">
						  			<%--  <p>$DPTitle</p>
						  			 <p>$DPContent</p> --%>
						  		</div>
						  	</div>
						  	<img src="$Image.URL" alt="Slider Image">
						  </div>
						</a>
						<% end_loop %>
					</div>
				</div>
				<div class="inlineBlock-parent by-3 services-content m-padding-t">
					<div class="center-align fade-in-up">
						<div class="title-holder">
							<h5 class="upcase">$F3ServiceTitle1</h5>
						</div>
						<div class="details-holder">
							<p>$F3ServiceDesc1</p>
						</div>
					</div
					><div class="center-align fade-in-up">
						<div class="title-holder">
							<h5 class="upcase">$F3ServiceTitle2</h5>
						</div>
						<div class="details-holder">
							<p>$F3ServiceDesc2</p>
						</div>
					</div
					><div class="center-align fade-in-up">
						<div class="title-holder">
							<h5 class="upcase">$F3ServiceTitle3</h5>
						</div>
						<div class="details-holder">
							<p>$F3ServiceDesc3</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="<% loop Menu(1) %><% if Pos == 4 %>$MenuTitle<% end_if %><% end_loop %>"></div>
	<div id="frame4" class="container vertical-parent">
		<div class="vertical-align margin-parent-l">
			 <div class="rates-holder center-align">
			 	<div class="rates-content fade-in">
			 		<div class="title-holder s-padding-lr">
			 			<h3 class="color-l-blue bold font-l">$Frame4Header</h3>
			 		</div>
			 		<div class="details-holder margin-parent-m">
			 			<p class="font-m">$Frame4Desc</p>
			 		</div>
			 	</div>
			 	<div class="container">
			 		<a href="" data-remodal-target="rates-modal" class="button-blue upcase">$Frame4Button</a>
			 	</div>
			 </div>
		</div>
	</div>

	<div id="<% loop Menu(1) %><% if Pos == 5 %>$MenuTitle<% end_if %><% end_loop %>"></div>
	<div id="frame6">
		<div class="container vertical-parent">
			<div class="vertical-align margin-parent-m center-align">
				<div class="fade-in-up">
					<div class="m-margin-b m-padding-t">
						<h3 class="color-light-gray bold">$Frame5Header</h3>
					</div>
					<div class="title-holder">
						<h5 class="color-blue font-l bold">$Frame5Title</h5>
					</div>
					<div class="details-holder">
						<p>$Frame5Desc</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<% include ContactForm %>
</div>
<% include RatesModal %>
<% include DataPrivacyModal %>