
begin
 require 'rubygems'  		#Rubygems gem
 require 'xmpp4r-simple'		#Simple XML Protocol for Jabber API
 require "highline/import"	#for password protection
 puts "Whiz Chat\nVersion - 1.0\t Developed by - S. Sathianarayanan(sathia2704@gmail.com)\nImproved by - S. Prasanna Venkadesh(prasmailme@gmail.com)\n"
 print 'Enter the username :'
 username = gets.chomp		#Get input from username for user-id
 #gets password for mail account, ask from higline gem
 password = ask("Enter the password :" ) { |p| p.echo = "*" }
 print 'to address: '		
 @to_username = gets.chomp  #prompt for userid to whom you want to chat with
 puts "Connecting to jabber server.."  
 @jabber = Jabber::Simple.new(username+'@gmail.com',password)  #using jabber api to connect with gmail account.
 system('clear')	#to clear the console screen to keep the screen clean.
 puts "Connected.\nType bye to quit" 	#note you need to type 'bye' at terminal to quit the app.
 @mess	#a variable to get input message from you and also to quit from this chat.

#method to exit
def quit
	#type 'bye' in terminal after logging in, you will be logged out.
	if(@mess=="bye")
		system('clear')
		puts 'Disconnected...'
		exit()
	end
end

#method to get input from you and to send to person you are in chat with.
def send
	while @mess!="bye" do	#repeat until the user want to quit
		@mess = gets.chomp	 #to get input message from user to chat
		#method to send the message of user to recipeint.
		@jabber.deliver(@to_username+"@gmail.com", @mess)
		sleep(1)	#for multithreading
	end
end

#method to read and display the message from sender
def receive
	#repeat until the user want to quit
	while @mess!="bye" do
		#method that reads the revceived message and puts in msg variable
		@jabber.received_messages do |msg| 
			puts "=============================================="  			
			puts  @to_username +": " + msg.body 	#display message in screen
			puts Time.now						#display the time of message received
		 	puts "**********************************************" 
			sleep(2)	#for multithreading
	    	end
	end
end	#end of receive method

t1=Thread.new { send() }		#instance for sending thread
t2=Thread.new { receive() }	#instance for receiving thread
t1.join					#when encounters sleep, jumps to thread t2
t2.join					#when encounters sleep, jumps to thread t1

#for first time users who have not installed the required gems, this method will be run only once
rescue LoadError
  print 'Dependencies was not installed. Do you want to install (y) or not (n)'
  a = gets.chomp
  if( a == 'y')
    system('sudo gem install xmpp4r-simple')
    system('sudo gem install highline')
  end
end		#end of method and program
