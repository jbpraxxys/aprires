<div id="frame8" class="bg-white">
	<div class="vertical-parent">
		<div class="vertical-align margin-parent-m">
			<div class="footer-top">
				<div class="inlineBlock-parent by-4">
					<div class="l-padding-l sitemap">
						<div class="title-holder">
							<h5>SITEMAP</h5>
						</div>
						<div class="sitemap-links">
							<% loop $Menu(1) %>
							<% if Pos != 1 %>
							<p><a title="$MenuTitle" href="#">$MenuTitle</a></p>
							<% end_if %>
							<% end_loop %>
						</div>
					</div
					><div class="footer-links s-padding-r">
						<div class="title-holder">
							<h5>LINKS</h5>
						</div>
						<div>
							<% loop $HeaderFooter %>
							<% loop $FooterLinks %>
								<p><a href="$Link" target="_blank">$LinkName</a></p>
							<% end_loop %>
							<% end_loop %>
							<p><a href="" data-remodal-target="data-privacy-modal">Data Privacy</a></p>
						</div>
					</div
					><div></div
					><div></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="frame9" class="bg-darkb-overlay">
	<div class="vertical-parent">
		<div class="vertical-align margin-parent-s m-padding-lr">
			<div class="center-align">
				<% loop $HeaderFooter %>
				<p class="color-white upcase">&copy; $Now.Year $copyright</p>
				<p></p>
				<% end_loop %>
			</div>
		</div>
	</div>
</div>