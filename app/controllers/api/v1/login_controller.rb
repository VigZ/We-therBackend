class Api::V1::LoginController < ApplicationController

  def create

    @user = User.find_or_create_by(username: params[:username])

    @days = @user.days


    #creating vars for user range
    @shlow = 0
    @shhigh = 0

    #creating sweater range
    @swlow = 0

    @swhigh = 0

    #creating layer range
    @lslow = 0

    @lshigh = 0

    # creating user clothing ranges
    #creating shirt range
    if (@days.length > 0)   # if the user has days

      #first day range setting logic

            inifpref = @days[0].pref   #then take the users first day temp. and initial form response

            if (inifpref == "option1") # if they are comfy w/ shirt set init. shirt range

              @shlow = @days[0].current.to_i - 5
              @shhigh = @days[0].current.to_i + 5



          elsif (inifpref == "option2") # if they are cold w/ shirt set init. sweater range
            @swlow = @days[0].current.to_i - 5
            @swhigh= @days[0].current.to_i + 5



          elsif (inifpref == "option3") #comfy w/ sweater
            @swlow = @days[0].current.to_i - 5
            @swhigh = @days[0].current.to_i + 5



          elsif (inifpref == "option4") #if cold w/ sweater set init layers range
            @lslow = @days[0].current.to_i - 5
            @lshigh = @days[0].current.to_i + 5


        elsif (inifpref == "option5") #if comfy w/ layers also
          @lslow = @days[0].current.to_i - 5
          @lshigh = @days[0].current.to_i + 5


        elsif (inifpref == "option6") #if cold w/ layers
          @lslow = @days[0].current.to_i - 5
          @lshigh = @days[0].current.to_i + 5

        end #ends nested if statement


          #starting after day 1 -- but w/in nested if

          #commenting d > 1 for now to see if session makes avail. ranges on login --

        #   if (@days.length > 1){ # if they have more than one day -- inspect judge options
        #
        #     @dafters  = @days[-1..-1]     #saving days after first as a collection
        #
        #     @dafters.each{|day|
        #           if (day.pref == "judge1"){ #if they are too warm -- adjust range -- rel. to suggestion
        #
        #
        #           }
        #
        #         elsif (day.pref == "judge2"){ #if comfy
        #
        #
        #         }
        #
        #       elsif (day.pref == "judge3"){ #if too cold -- adjust
        #
        #       }
        #
        #     } #end of it.
        #
        #
        #   } #end of 2nd nested if
        #
        # end




  end #ending larger if












    # @days.all{|day| (day.current)/(day.pref)
    #
    # }




    @location = Location.find_or_create_by(latitude: params[:latitude], longitude: params[:longitude])
    @session = {
      "user" => @user,
      "days" => @days,
      "location" => @location,
      "shlow" => @shlow,
      "shhigh" => @shhigh,
      "swlow" => @swlow,
      "swhigh" => @swhigh,
      "lslow" => @lslow,
      "lshigh" => @lshigh
    }
    # .to_json

    render json: @session, status: 200

  end
end
