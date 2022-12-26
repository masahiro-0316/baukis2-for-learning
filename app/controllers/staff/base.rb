class Staff::Base < ApplicationConstoller
  private def current_staff_member
    if session[:staff_member_id]
      @current_staff_member ||=
        StaffMember.find.by(id: session[:staff_member_id])
    end
  end

  helper_method :current_staff_member
end