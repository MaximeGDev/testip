class HomeController < ApplicationController
	require 'ipaddr'
	require 'socket'

	def index
	 	s = Socket.new Socket::AF_INET, Socket::SOCK_STREAM
	 	s.connect Socket.pack_sockaddr_in(80, 'exemple.com')

	 	addr_infos = Socket.ip_address_list
	 	p "----------------------------------------"
	 	addr_infos.each do |infoip|

	 		p infoip

	 	end
	 	p "-----------------------------------------------------"

	 	p "///////////////////////////////////"
	 	p s
	 	p "///////////////////////////////"
	 	p "************************************"

	 	p "*************************************"
	end

	def show
		
	end



end
