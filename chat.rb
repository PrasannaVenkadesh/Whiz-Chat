#!/usr/bin/env ruby
=begin
	Application Name: Whiz-Chat
	Version: 2.31
	License: GPL V2.0
=end

begin
	 require 'rubygems'  		#Rubygems gem
	 require 'colorize'		#gem used to set colors to text and backgrounds
	 require 'xmpp4r-simple'	#Simple XML Protocol for Jabber API
	 require "highline/import"	#for password protection
	 require 'gmail'		#for gmail access
	 require "Contacts"
	 
		 system('clear')
	 	 system('espeak "Welcome. Dude" >/dev/null 2>&1')
		 puts "Whiz Chat Version - 2.31".colorize(:yellow)
		 puts "Developed by- S. Sathianarayanan (sathia2704@gmail.com)\nImproved by- S. Prasanna Venkadesh (prasmailme@gmail.com)\nGithub Repository: https://github.com/PrasannaVenkadesh/Whiz-Chat\n".colorize( :blue ).underline
		 print 'Enter your Gmail Username :'
		 username = gets.chomp		#Get input from username for user-id
		 #gets password for mail account, ask from higline gem
		 password = ask("Enter your password :" ) { |p| p.echo = "*" }
		 
		 def quit
                        #type 'bye' in terminal after logging in, you will be logged out.
            		system('reset')
                        puts "You are now Disconnected"
                        system('espeak "Bye Dude" >/dev/null 2>&1')
                        exit()
                 end
	
		 begin
                        puts "Want to Chat or check Mail?\nc - chat\nm - mail\nq - quit"
                        @opt = gets.chomp
                        if(@opt == 'm')
                                Gmail.connect(username, password) do  |gmail|
                                        system('clear')
                                        puts "You have "+ gmail.inbox.count(:unread).to_s + " unread mails"
                                end
                        end
                        if(@opt == 'q')
                                quit
                        end
                 end while(@opt!='c')


		 login = Login.new
		 login.do_login(username,password)
	 	 puts "\n"
		 print 'To Username: '
		 @to_username = gets.chomp  #prompt for userid to whom you want to chat with
		 puts "Connecting to jabber server.."  
		 @jabber = Jabber::Simple.new(username+'@gmail.com',password)  #using jabber api to connect with gmail account.
		 system('clear')	#to clear the console screen to keep the screen clean.
		 system('espeak "Connected.." >/dev/null 2>&1')

		 puts "Do you want to set Status Message (y) or (n)"
                 @choic = gets.chomp
                 if(@choic == 'y')
			puts 'Whats in your mind: '.colorize(:red)
                        temp = gets.chomp
                        @jabber.status(:chat,temp)
                 end
		
		 system('clear')
		 puts "You can now start chatting\nType bye to quit" 	#note you need to type 'bye' at terminal to quit the app.
		 @mess	#a variable to get input message from you and also to quit from this chat.

		#method to get input from you and to send to person you are in chat with.
		def send
			while @mess!="bye" do	#repeat until the user want to quit
				@mess = gets.chomp	 #to get input message from user to chat
				#method to send the message of user to recipeint.
				@jabber.deliver(@to_username+"@gmail.com", @mess)
				sleep(1)	#for multithreading
			end
			quit
		end
	
		#method to read and display the message from sender
		def receive
			#repeat until the user want to quit
			while @mess!="bye" do
				#method that reads the revceived message and puts in msg variable
				@jabber.received_messages do |msg| 
					if msg.from.node == @to_username
						puts "=============================================="  			
						puts  @to_username.colorize(:color => :black,:background => :yellow) +": " + msg.body.colorize(:green) 	#display message in screen
						puts Time.now.to_s.colorize(:gray)						#display the time of message received
						system('espeak "Got message" > /dev/null 2>&1')
					 	puts "**********************************************" 
						sleep(2)	#for multithreading
					end
			    	end
			end
			#quit
		end	#end of receive method

		t1=Thread.new { send() }		#instance for sending thread
		t2=Thread.new { receive() }		#instance for receiving thread
		t1.join					#when encounters sleep, jumps to thread t2
		t2.join					#when encounters sleep, jumps to thread t1


	#for first time users who have not installed the required gems, this method will be run only once
	rescue LoadError
		puts "Please execute the install.sh file before running this file.\nUse 'sudo sh install.sh' to execute"


	rescue Jabber::ClientAuthenticationFailure
		print "Invalid username / password\n".colorize(:red) + "Run again\n".colorize(:yellow)

	rescue Net::IMAP::BadResponseError
		print "Invalid username / password\n".colorize(:green) + "Run again\n".colorize(:yellow)

	#To handle interrupts
	rescue Interrupt
		puts "\nAborted By User..."

end
