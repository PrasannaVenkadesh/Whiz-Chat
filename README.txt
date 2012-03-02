Whiz-Chat is a ruby script for Linux through which terminal users can chat from terminal by using their Gmail account.
This is released under the Gnu GPL V3.0 License so that anyone can make code contributions and other sort of contributions.
Check the file named COPYING to know more about the license.

This is a team work of
	S. Sathianarayanan(http://lquery.com) &
	S. Prasanna Venkadesh (http://prasopensource.wordpress.com/)

md5checksum - 6b5e39c17444fd10e4f68d35d6f33d69  chat.rb

Step 1: Download either tar.gz or .zip file from Download section or you can also download each file individually.

Step 2: Extract the files from tar.gz or .zip file by right clicking and Extracting the files. If you have donwloaded individual files you can skip this step.

Step 3: Now run the fedora_install.sh or ubuntu_install.sh shell script according to your operating system using the following command "sudo sh install.sh" and let the dependencies and ruby libraries get downloaded from the internet, wait till it gets completed.

Step 4: Run the Ruby script like './chat.rb' or 'ruby chat.rb' from your terminal.

Step 5: Enter your Google mail account user_id alone (Eg:prasmailme) and don't add (@gmail.com), it will be automatically appended.

Step 6: Enter the password for your account.

Step 7: Now you will be displayed with a menu and you can choose one from the menu using the corresponding options.

Step 8: When you choose to chat - In 'To Username: ' type the recepient user_id fully (Eg:prasmailme@gmail.com).
This is because now we have added a feature to chat with other domains also from gmail account (Provided domain service provider offers chat option. Facebook and Yahoo are not currently supported now.).

Step 9: If everything went fine you have will be able to send or receive messages, or else exceptions will be thrown for User_id / Password mismatch.

Step 10: Type 'bye' to quit from chat, the message bye will also be delivered for the receiver and you will be disconnected

We have a list of features. Check features.rdoc file.
Please do help us by mailing the bugs you find.

Note: We have used 'espeak' to make sound alerts and it comes as default in ubuntu 10.10 and 11.04.
