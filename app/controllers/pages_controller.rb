class PagesController < ApplicationController
  def home
    @meetings = Meeting.all
    hh = Hash.new
    (8..23).each do |h| 
      hh[h] = Array.new
      hh[h][0] = Array.new
      hh[h][1] = Array.new
    end


    @meetings.group_by_minute() do |u|
      hour = u.start_time.strftime('%H').to_i
      staffId = u.user_id.to_i

      hh[hour][staffId] << u
      u.start_time
    end

    #Devolver uma matriz da seguinte forma matriz = [ 800: [ [], []  ], 900: [], 930: [] ]
    puts hh

    #@bookings = hh
    @bookings = Meeting.all
  end
end
