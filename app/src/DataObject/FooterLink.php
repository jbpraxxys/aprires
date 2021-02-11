<?php

namespace {
	use SilverStripe\CMS\Model\SiteTree;
	use SilverStripe\ORM\DataObject;
	use SilverStripe\Assets\Image;
	use SilverStripe\Forms\FieldList;
	use SilverStripe\Forms\TextField;
	use SilverStripe\Forms\TextareaField;
	use SilverStripe\Forms\ReadonlyField;
	use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
	use SilverStripe\AssetAdmin\Forms\UploadField;
	use SilverStripe\Versioned\Versioned;
	use SilverStripe\Control\Controller;

	class FooterLink extends DataObject {

		private static $db = [
			#Specialty
			'SortID' => 'Int',
			'LinkName' => 'Text',
			'Link' => 'Text',
		];

		private static $has_one = [
			'HeaderFooter'=> HeaderFooter::class,
		];

		private static $owns = [
		];

		public function getThumbnail() {
		   if ($this->Image()->exists()) { 
		       return $this->Image()->ScaleWidth(50); 
		   } else { 
		       return '(No Image)'; 
		   }
		}

		private static $summary_fields = array(
			'LinkName' => 'Link Name',
			'Link' => 'Link',
			

		);

		public function getCMSFields() {
			$fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('SortID', 'Sort ID'));
			$fields->addFieldToTab('Root.Main', TextField::create('LinkName', 'Link Name'));
			$fields->addFieldToTab('Root.Main', TextField::create('Link', 'Link'));

			return $fields;
		}
	}
}
