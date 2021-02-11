<?php
namespace {
	use SilverStripe\CMS\Model\SiteTree;
	use SilverStripe\Forms\TextField;
	use SilverStripe\Forms\TextareaField;
	use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
	use SilverStripe\Forms\HTMLEditor;
	use SilverStripe\Forms\FormField;
	use SilverStripe\Forms\LabelField;
	use SilverStripe\AssetAdmin\Forms\UploadField;
	use SilverStripe\Assets\Image;
	use SilverStripe\Assets\File;
	use SilverStripe\Forms\TabSet;
	use SilverStripe\Forms\Tab;
	use SilverStripe\ORM\DataObject;
	use SilverStripe\Forms\FieldList;
	use SilverStripe\Forms\GridField\GridField;
	use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
	use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

	class HomePage extends Page {

		private static $db = [

			/*Frame 1*/
			'BannerHeader' => 'Text',
			'BannerText' => 'HTMLText',

			/*Frame 2*/
			'Frame2Header1' => 'Text',
			'Frame2Desc1' => 'Text',
			'Frame2Header2' => 'Text',
			'Frame2Desc2' => 'Text',
			'Frame2Header3' => 'Text',
			'Frame2Desc3' => 'Text',

			/*Frame 3*/
			
			'Frame3Header' => 'Text',
			'F3ServiceTitle1' => 'Text',
			'F3ServiceDesc1' => 'Text',
			'F3ServiceTitle2' => 'Text',
			'F3ServiceDesc2' => 'Text',
			'F3ServiceTitle3' => 'Text',
			'F3ServiceDesc3' => 'Text',

			/*Frame 4*/
			
			'Frame4Header' => 'Text',
			'Frame4Desc' => 'Text',
			'Frame4Button' => 'Varchar',

			/*Frame 5*/

			'Frame5Header' => 'Text',
			'Frame5Title' => 'Text',
			'Frame5Desc' => 'Text',

			/*Frame 6*/

			'Phone' => 'Text',
			'Fax' => 'Text',
			'Email' => 'Text',
			'SendButton' => 'Text',



			'RatesHeader' => 'Text',
			'RatesDesc' => 'Text',
			'RatesTblHeader' => 'Text',
			'Year1' => 'Text',
			'Year2' => 'Text',
			'Year3' => 'Text',
			'Year4' => 'Text',
			'RatesTblContent' => 'Text',
			'RatesTblNote' => 'Text',


			/*Email Recipient*/
			'EmailRecipient' => 'Text',

		];

		private static $has_one = [
			'F1BG' => Image::class,
			'F2IMG1' => Image::class,
			'F2IMG2' => Image::class,
			'F2IMG3' => Image::class,
			'F6BG' => Image::class,
		
		];

		private static $owns = [
			// 'F1IMG',
			'F1BG',
			'F2IMG1',
			'F2IMG2',
			'F2IMG3',
			'F6BG'
		];

		private static $has_many = [
	        'ServicePhotos' => ServicePhoto::class,
	    ];


		private static $allowed_children = "none";

		private static $defaults = array(
			'PageName' => 'Home Page',
			'MenuTitle' => 'Home',
			'ShowInMenus' => true,
			'ShowInSearch' => true,
		);

		public function getCMSFields() {
			$fields = parent::getCMSFields();
			#Remove by tab
			$fields->removeFieldFromTab('Root.Main', 'Content');

			/*
			|-----------------------------------------------
			| @Frame1
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame1.Main', array(
				$upload1 = UploadField::create('F1BG','Background'),
				new TextField('BannerHeader', 'Title'),
				new TextareaField('BannerText', 'Description'),
			));
			# SET FIELD DESCRIPTION 
			$upload1->setDescription('Max file size: 2MB | Dimension: 1080px x 600px');
			# Set destination path for the uploaded images.
			$upload1->setFolderName('homepage');

			/*
			|-----------------------------------------------
			| @Frame2
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame2.ItemOne', array(
				$upload1 = UploadField::create('F2IMG1','Image'),
				new TextField('Frame2Header1', 'Title'),
				new TextareaField('Frame2Desc1', 'Description'),
			));
			# SET FIELD DESCRIPTION 
			$upload1->setDescription('Max file size: 2MB | Dimension: 1080px x 600px');
			
			$upload1->setFolderName('homepage');

			/*
			|-----------------------------------------------
			| @Frame2
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame2.ItemTwo', array(
			
				$upload2 = UploadField::create('F2IMG2','Image'),
				new TextField('Frame2Header2', 'Title'),
				new TextareaField('Frame2Desc2', 'Description'),
				
			));
			# SET FIELD DESCRIPTION 
			$upload2->setDescription('Max file size: 2MB | Dimension: 1080px x 600px');
			
			$upload2->setFolderName('homepage');

			/*
			|-----------------------------------------------
			| @Frame2
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame2.ItemThree', array(
			
				$upload3 = UploadField::create('F2IMG3','Image'),
				new TextField('Frame2Header3', 'Title'),
				new TextareaField('Frame2Desc3', 'Description'),
				
			));
			# SET FIELD DESCRIPTION 
			$upload3->setDescription('Max file size: 2MB | Dimension: 1080px x 600px');
			
			$upload3->setFolderName('homepage');


			/*
			|-----------------------------------------------
			| @Frame3
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame3.Main', array(
				new TextField('Frame3Header', 'Title'),
			));

			$fields->addFieldToTab('Root.Frame3.Images', new TabSet('ServicePhotos',
				new Tab('ServicePhoto', GridField::create(
		            'ServicePhotos',
		            'ServicePhotos',
		            $this->ServicePhotos(),
		            GridFieldConfig_RecordEditor::create(10)
		            ->addComponent(new GridFieldSortableRows('SortID'))
				))
			));


			/*
			|-----------------------------------------------
			| @Frame3
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame3.Service1', array(
				new TextField('F3ServiceTitle1', 'Service 1 Title'),
				new TextareaField('F3ServiceDesc1', 'Service 1 Description'),
			));

			$fields->addFieldsToTab('Root.Frame3.Service2', array(
				new TextField('F3ServiceTitle2', 'Service 2 Title'),
				new TextareaField('F3ServiceDesc2', 'Service 2 Description'),
			));

			$fields->addFieldsToTab('Root.Frame3.Service3', array(
				new TextField('F3ServiceTitle3', 'Service 3 Title'),
				new TextareaField('F3ServiceDesc3', 'Service 3 Description'),
			));

			/*
			|-----------------------------------------------
			| @Frame4
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame4.Main', array(
				new TextField('Frame4Header', 'Title'),
				new TextareaField('Frame4Desc', 'Description'),
				new TextField('Frame4Button', 'Button Text'),
			));

			/*
			|-----------------------------------------------
			| @Frame5
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame5.Main', array(
				new TextField('Frame5Header', 'Header'),
				new TextField('Frame5Title', 'Title'),
				new TextareaField('Frame5Desc', 'Description'),
			));

			/*
			|-----------------------------------------------
			| @Frame6
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Frame6.Main', array(
				$upload1 = UploadField::create('F6BG','Background'),
				new TextField('Phone', 'Phone'),
				new TextField('Fax', 'Fax'),
				new TextareaField('Email', 'Email'),
			));

			# SET FIELD DESCRIPTION 
			$upload1->setDescription('Max file size: 2MB | Dimension: 1080px x 600px');
			# Set destination path for the uploaded images.
			$upload1->setFolderName('homepage');

			/*
			|-----------------------------------------------
			| @Rates
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.Rates.Main', array(
				new TextField('RatesHeader', 'Header'),
				new TextareaField('RatesDesc', 'Description'),
				new TextField('Year1', 'Year1'),
				new TextField('Year2', 'Year2'),
				new TextField('Year3', 'Year3'),
				new TextField('Year4', 'Year4'),
				new TextField('RatesTblHeader', 'Table Header'),
				new TextField('RatesTblContent', 'Rate Computation'),
				new TextField('RatesTblNote', 'Table Note'),
			));

			/*
			|-----------------------------------------------
			| @Email Recipient
			|----------------------------------------------- */
			$fields->addFieldsToTab('Root.EmailRecipient.main', array(
				new TextField('EmailRecipient', 'Email Recipient'),
			));

			return $fields;

		}
	}

	class HomePageController extends PageController {

		// public function FeaturedProducts() {
		// 	return Product::get()
		// 		->filter(array (
		// 		'Featured' => true
		// 	));
		// }

	}
}