class HomeController < ApplicationController
  def top
    @member = Member.all.order(in_time: :asc)
    @cnt = Count.find(1)
    @cnt.save
  end

  def show
    @member = Member.find_by(id: params[:id])
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    @member.destroy
    @member.save
    redirect_to('/')
  end

  def edit
    @member = Member.find_by(id: params[:id])
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.update(name: params[:name], in_time: params[:in_time], out_time: params[:out_time])
    redirect_to('/')
  end

  def create_enter
    @times = Time.now
    @member = Member.new(name: params[:name], in_time: @times, out_time: params[:out_time])
    @member.save
    @cnt = Count.find(1)
    @cnt.counter += 1
    @cnt.save
    redirect_to('/')
  end

  def create_res
    @member = Member.new(name: params[:name], in_time: params[:in_time], out_time: params[:out_time])
    @member.save
    @cnt = Count.find(1)
    @cnt.counter += 1
    @cnt.save
    redirect_to('/')
  end
end
