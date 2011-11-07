Whiz-Chat is a ruby script for Linux through which terminal users can chat from terminal by using their Gmail account.

This is a team work of
	S. Sathianarayanan(http://sathia27.wordpress.com/) &
	S. Prasanna Venkadesh (http://prasopensource.wordpress.com/)

md5Checksum - bf7ed3306ab115750a94d9c541f8e16f  chat.rb

Step 1: Download the file 'chat.rb' from the repository

Step 2: Make sure you have installed Ruby 1.8.x (Recommended) in your Linux box and have installed Rubygems1.8 (Recommended).

Step 3: Run the Ruby script like 'ruby chat.rb' from your terminal.

Step 4: Dependencies need to be satisfied for the first time, so type 'y' to satisfy dependencies from Internet.

Step 5: Repeat step 3 again. If it again prompt for dependencies, do repeat step 3 as Super User using 'sudo' command before it.

Step 6: The above thing works only for Debian/Ubuntu users, and if you are an Redhat/Fedora based user please do install ruby1.8.x and Rubygems1.8 manually.

Step 7: Enter your Google mail account user_id alone (Eg:prasmailme) and dont add (@gmail.com), it will be automatically appended.

Step 8: Enter the password for your account.

Step 9: Now you will be displayed with a menu and you can choose one from the menu using the corresponding options.

Step 10: When you choose to chat - In 'to address: ' type the recepient user_id like above in Step 7.

Step 11: If everything went fine you have will be ready to send or receive messages, or else exceptions will be thrown for User_id / Password mismatch.

Step 12: Type 'bye' to quit from chat, the message bye will also be delivered for the receiver.

We have a list of features. Check features.rdoc file.
Please do help us by mailing the bugs you find.

Note: We have used 'espeak' to make sound alerts and it comes as default in ubuntu 10.10 and 11.04, so if you are using some other distro or versions of linux see to that you have got that tool installed or install it manually using the following command:
Debian / Ubuntu distro's:  sudo apt-get install espeak
Redhat / Fedora / CentOS : Search in repository for espeak, they have their own 'rpm' package for espeak.

