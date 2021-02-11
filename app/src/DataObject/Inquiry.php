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

	class Inquiry extends DataObject {

		private static $db = [
			#Specialty
			'SortID' => 'Int',
			'name' => 'Text',
			'email' => 'Text',
			'company' => 'Text',
			'industry' => 'Text',
			'messagedetails' => 'Text',
		];

		private static $has_one = [
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
			'name' => 'Name',
			'email' => 'Email',
			'company' => 'Company',
			'industry' => 'Industry',
			'messagedetails' => 'Message',
			

		);

		public function getCMSFields() {
			$fields = parent::getCMSFields();
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('SortID', 'Sort ID'));
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('name', 'Name'));
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('email', 'Email'));
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('company', 'Company'));
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('industry', 'Industry'));
			$fields->addFieldToTab('Root.Main', ReadonlyField::create('messagedetails', 'Message'));

			return $fields;
		}
	}
}
