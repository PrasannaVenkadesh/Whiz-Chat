Whiz-Chat is a ruby script for Linux through which terminal users can chat from terminal by using their Gmail account.

This is a team work of
	S. Sathianarayanan(sathia2704@gmail.com) &
	S. Prasanna Venkadesh (prasmailme@gmail.com)

md5Checksum - fc3f95f8dbb6ec09b2ec13930d405505  chat.rb

Step 1: Download the file 'chat.rb' from the repository

Step 2: Make sure you have installed Ruby 1.8.x (Recommended) in your Linux box and have installed Rubygems1.8 (Recommended).

Step 3: Run the Ruby script like 'ruby chat.rb' from your terminal.

Step 4: Dependencies need to be satisfied for the first time, so type 'y' to satisfy dependencies from Internet.

Step 5: Repeat step 3 again. If it again prompt for dependencies, do repeat step 3 as Super User using 'sudo' command before it.

Step 6: The above thing works only for Debian/Ubuntu users, and if you are an Redhat/Fedora based user please do install ruby1.8.x and Rubygems1.8 manually.

Step 7: Enter your Google mail account user_id alone (Eg:prasmailme) and dont add (@gmail.com), it will be automatically appended.

Step 8: Enter the password for your account.

Step 9:  In 'to address: ' type the recepient user_id like above in Step 6.

Step 10: If everything went fine you have will be ready to send or receive messages, or else exceptions will be thrown for User_id / Password mismatch.

Step 11: Type 'bye' to quit from chat, the message bye will also be delivered for the receiver.

We have a list of features. Check features.rdoc file.
Please do help us by mailing the bugs you find.

Note: We have used 'espeak' to make sound alerts and it comes as default in ubuntu 10.10 and 11.04, so if you are using some other distro or versions of linux see to that you have got that tool installed or install it manually.
