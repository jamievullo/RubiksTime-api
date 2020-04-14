class CubesController < ApplicationController

  def index
    #should show all cubes and times by user
  end

  def show
    #should show times by selected cube by user
  end

  def add_records
    user = User.find_by(id: params[:user_id])
    cube = Cube.find_by(cube_type: params[:cube_type])
    record = params[:record]
    r = Record.new(cube_time: record, user: user, cube: cube)
    
    if r.save!
        render json: {
          new_record: r
        }
    else 
      render json: {
        status: 500,
        errors: r.errors.full_messages
      }  
    end
    #/users/:user_id/cubes/:cube_id/add_time POST
    #should add times/records for selected cube by user
    # byebug
  end

end
