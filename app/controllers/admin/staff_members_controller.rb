class Admin::StaffMembersController < Admin::Base
  def index
    @staff_members = StaffMember.order(:family_name, :given_name)
  end

  def show
    staff_member = StaffMember.find(params[:id])
    redirect_to [ :edit, :admin, staff_member ]
  end

  def new
    @staff_member =  StaffMember.new
  end
end
