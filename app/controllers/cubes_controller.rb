class CubesController < ApplicationController

  def index
    #should show all cubes and times by user
  end

  def show
    #should show times by selected cube by user
    user = User.find_by(id: params[:user_id])
    cube = Cube.find_by(cube_type: params[:cube_type])

    records = Record.where(user: user, cube: cube).order(created_at: :desc)

    render json: {
      all_times_by_cube: records,
      last_5: records.limit(5)
    }

    # byebug
  end

  def add_records
    user = User.find_by(id: params[:user_id])
    cube = Cube.find_by(cube_type: params[:cube_type])
    record = params[:record]
    r = Record.new(cube_time: record, user: user, cube: cube, created_at: Time.zone.now, updated_at: Time.zone.now)
    
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
