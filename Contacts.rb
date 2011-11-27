=begin
Program name: Gmail contacts
Date Written: 16/08/2011
Date Modified: 17/08/2011
Author : Sathianarayanan.S
License: GPL2.0
Version: 1.2
=end
class Login
	
		require 'rubygems'
		require 'mechanize'
		require 'highline/import'
		
		def do_login(uname,pwd)
		
			username = uname
			#password = ask("Enter the password :" ) { |p| p.echo = "*" }
			password = pwd
			agent = Mechanize.new
			agent.user_agent_alias = 'Mac Safari'
			page = agent.get("https://accounts.google.com/ServiceLogin?service=talk&passive=true&skipvpage=true&continue=https://talkgadget.google.com/talkgadget/gauth?verify%3Dtrue%26noref%3Dtrue")
			puts 'Instant Contacts - They may be online or may not be online'
			puts "===========================================================\n"
			form = page.forms.first
			form.Email = username
			form.Passwd = password
			page = agent.submit form
			page = agent.get("https://talkgadget.google.com/talkgadget/notifierclient?authuser=0&client=sm&prop=homepage&nav=true&fid=gtn-roster-iframe-id&ts=0&debug=undefined&os=Linux%20i686&stime=1321542905985&fb=false&re=true&no=undefined&hc=undefined&ref=undefined&xpc={%22cn%22%3A%22l12414%22%2C%22tp%22%3A1%2C%22ifrid%22%3A%22gtn-roster-iframe-id%22%2C%22pu%22%3A%22https%3A%2F%2Ftalkgadget.google.com%2Ftalkgadget%2F%22}&pvt=AMP3uWbAWkoMlxoBoRz5blr_5GzrcOLyzFSOGz1b8v05VvY6n5Dz_MHOcGTVrYYOgXSX1jqnHyC3DSzNLh2YwVsdqd_LBB1CJA%3D%3D&href=https%3A%2F%2Fplus.google.com%2F_%2Fapps-static%2F_%2Fjs%2Fhome%2Fb%2Cs%2Frt%3Dh%2Fver%3DtsR4kt6l09w.en_GB.%2Fsv%3D1%2Fam%3D!daPtsgL6ilJKGt6e0wnY2dIyMmgIoZymxU2gzO8%2Fd%3D1%2F%3Frel%3D1&hl=en-GB&pal=1&host=1&zx=b2bdyck1y551")
			url = page.search("script").last().attributes["src"]
			page = agent.get(url)
			contacts = page.body.scan(/42[a-z|A-Z|0-9._%+-]+@[a-z]+.com/)
			contacts.uniq.each do |c|
	       			puts c.gsub(/^42/,"")
			end
		end
end
