<!doctype html>
<html>
	<head>
		<style>
			@import url("https://fonts.googleapis.com/css?family=Ubuntu&display=swap");
			
			html {
				font-family: 'Ubuntu', sans-serif;
			}

			/** 
			 * COLORS
			 */
			.color--black {
				color: #333;
			}

			.color--gray {
				color: #5f5f5f;
			}

			.color--brown {
				color: #30292a;
			}

			.color--white {
				color: #ffffff;
			}

			strong {
				font-weight: bold;
			}
			 

			/** 
			 * EMAIL : Template
			 */
			.email-template__holder {
				width: 900px;
				padding: 50px 0px;
				margin: auto;
				background: #ececec;
			}

			.email-template__card {
				width: 80%;
				margin: auto;
				background: white;
			}

			.email-template__card-limit {
				width: 80%;
				margin: auto;
				background: white;
			}

			.email-template__header {
				text-align: center;
				width: 100%;
				padding-top: 60px;
			}

			.email-template__logo {
				max-width: 250px;
				color: #005792;
			}

			.email-template__description {
				padding-top: 10px;
				padding-bottom: 60px;
			}

			.email-template__description > * {
				font-size: 1.1em;
			}

		</style>
	</head>
	<body>
		<div class="email-template__holder">
			<div class="email-template__card">
				<div class="email-template__card-limit">
					<div class="email-template__header">
						<img class="email-template__logo" src="http://newdrafts.praxxys.ph/aprires/themes/main/images/logo.jpg">
					</div>
					<div class="email-template__description">
						<br>
						<p class="color--back"><strong>Message Details</strong></p>
						<br>
						<p class="color--back"><strong>Full Name :</strong> {$name}</p>
						<p class="color--back"><strong>Email Address :</strong> {$email}</p>
						<p class="color--back"><strong>Company :</strong> {$company}</p>
						<p class="color--back"><strong>Industry :</strong> {$industry}</p>
						<p class="color--back"><strong>Message :</strong> {$messagedetails}</p>
						<br>
						<br>
						<p class="color--back">Thank You,</p>
						<p class="color--back">Best Regards</p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>