class Admin::StaffMembersController < Admin::Base
  def index
    @staff_members = StaffMember.order(:family_name, :given_name)
  end
end
