<?php

namespace {
	use SilverStripe\Admin\ModelAdmin;

	class InquiryAdmin extends ModelAdmin {
		private static $managed_models = [
			Inquiry::class
		];

		private static $menu_title = 'Inquiries';
		private static $url_segment = 'inquiries';

	}
}