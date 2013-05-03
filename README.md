Guardian
====================

Guardian protects web forms from spam.  By adding a hidden input field that counts up, guardian will reject submissions with a duration less than any threshold we deem appropriate (defualt is 2 seconds).


## Install
### RubyGems.org
	$ gem install guardian-forms

### from source
	$ git clone http://github.com/forrestgrant/guardian
	$ cd guardian
	$ rake build
	$ rake install

Usage
==========

Set a before filter in your controller

	before_filter :guard

Or

	before_filter { |c| c.guard({:threshold => 5})} # 5 seconds

Add guardian to `application.js`
	
	//= require jquery.guardian

Set Guard specific forms in views
	
	$('form').guard();
