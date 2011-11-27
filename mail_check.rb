class Check

	require 'rubygems'
	require 'gmail'

	def do_check(uname,pwd)
		username = uname
		password = pwd
		
		Gmail.connect(username, password) do  |gmail|
                	puts "Enter today's date in format YYYY-MM-DD: "
              		today = gets.chomp
               		system('clear')
               		puts "1. You have "+ gmail.inbox.count(:unread).to_s + " unread mails"
               		puts "2. You have "+ gmail.inbox.count(:unread, :on => Date.parse(today)).to_s+ " unread mails today"
			puts "\nDo you want to perform more operations? (y/n)? "
			more = gets.chomp
			if(more == 'y')
	                    	puts "Check Subject of mail from a specific user on a specific date\nEnter user's mail id: "
	                    	user_mail_id=gets.chomp
        	               	puts "Enter a specific date in the format YYYY-MM-DD: "
	                  	date = gets.chomp
	                 	gmail.inbox.emails(:from=> user_mail_id, :on => Date.parse(date)).each do |email|
                      			puts email.subject
                  		end
			end
			gmail.logout
                end
	end
end
