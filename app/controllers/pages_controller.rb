class PagesController < ApplicationController
  def home
    # where(date = Date.todat).orderBy(start_date)
    @meetings = Meeting.all
    hh = Hash.new
    (8..23).each do |h| 
      hh[h] = Array.new
      hh[h][0] = Array.new
      hh[h][1] = Array.new
    end

    @testes = Hash.new
    #Each staff has its own array
    @testes[1] = Array.new
    @testes[2] = Array.new
    
    @meetings.each do |u| 
      puts u 
      @testes[u.user] << u
    end


   # @meetings.group_by_minute() do |u|
   #   hour = u.start_time.strftime('%H').to_i
   #   staffId = u.user.to_i
   #
   #   hh[hour][staffId] << u
   #   u.start_time
   # end

    #Devolver uma matriz da seguinte forma matriz = [ 800: [ [], []  ], 900: [], 930: [] ]
    puts @testes

    #@bookings = hh
    @bookings = Meeting.all
  end
end
