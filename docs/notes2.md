  I. Simple Form

	  Be sure to have a copy of the Bootstrap stylesheet available on your
	  application, you can get it on http://getbootstrap.com/.

	  For usage examples and documentation, see:

	  http://simple-form-bootstrap.plataformatec.com.br/

  -------------------------------------------------------------

  II. Installing Postgresql on WSL (Windows 10)
      taken from:

	  https://mirrorcommunications.com/blog/how-to-install-ruby-on-rails-on-windows-10-with-postgresql-2

	1. sudo apt-get update
	2. sudo apt install postgresql postgresql-contrib
	3. sudo /etc/init.d/postgresql start

	# Install pg gem dependencies
		sudo apt-get install libpq-dev

---------------------------------------------------------------

III. https://www.tutorialspoint.com/ruby-on-rails/rails-database-setup.htm

	create a new user 
		sudo -u postgres createuser rubyuser -s

	logging in as a default user
	 	sudo -u postgres psql

	creating a password at postgres prompt
		postgres=# \password rubyuser

	creating database for TinderEats_production
	postgres=# CREATE DATABASE TinderEats_production OWNER rubyuser;

	creating database for TinderEats_development
	postgres=# CREATE DATABASE TinderEats_development OWNER rubyuser;

	creating database for TinderEats_test
	postgres=# CREATE DATABASE TinderEats_test OWNER rubyuser;

---------------------------------------------------------------IV. Fixing Rails NameError: uninitialized constant

	$ spring stop

	there are some other useful tips here:

	https://stackoverflow.com/questions/39438109/rails-console-in-production-nameerror-uninitialized-constant








