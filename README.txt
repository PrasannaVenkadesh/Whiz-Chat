Whiz-Chat is a ruby script for Linux through which terminal users can chat from terminal by using their Gmail account.

This is a team work of
	S. Sathianarayanan(http://lquery.com) &
	S. Prasanna Venkadesh (http://prasopensource.wordpress.com/)

md5checksum - fc2bb96a624c308b6276510f622c38e2  chat.rb

Step 1: Download either tar.gz or .zip file from Download section or you can also download each file individually.

Step 2: Extract the files from tar.gz or .zip file by right clicking and Extracting the files. If you have donwloaded individual files you can skip this step.

Step 3: Now run the install.sh shell script using the following command "sudo sh install.sh" and let the dependencies and ruby libraries get downloaded from the internet, wait till it gets completed.

Step 4: The above thing works only for Debian/Ubuntu users, and if you are an Redhat/Fedora based user please do install ruby1.8.x and Rubygems1.8 manually.

Step 5: Run the Ruby script like './chat.rb' or 'ruby1.8 chat.rb' from your terminal.

Step 6: Enter your Google mail account user_id alone (Eg:prasmailme) and dont add (@gmail.com), it will be automatically appended.

Step 7: Enter the password for your account.

Step 8: Now you will be displayed with a menu and you can choose one from the menu using the corresponding options.

Step 9: When you choose to chat - In 'To Username: ' type the recepient user_id like above in Step 6.

Step 10: If everything went fine you have will be ready to send or receive messages, or else exceptions will be thrown for User_id / Password mismatch.

Step 11: Type 'bye' to quit from chat, the message bye will also be delivered for the receiver and you will be disconnected

We have a list of features. Check features.rdoc file.
Please do help us by mailing the bugs you find.

Note: We have used 'espeak' to make sound alerts and it comes as default in ubuntu 10.10 and 11.04, so if you are using some other distro or versions of linux see to that you have got that tool installed or install it manually using the following command:
Redhat / Fedora / CentOS : Search in repository for espeak, they have their own 'rpm' package for espeak.

