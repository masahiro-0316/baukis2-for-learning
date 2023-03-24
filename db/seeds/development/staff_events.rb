staff_members = StaffMember.all

256.times do |n|
  m = staff_members.sample
  e = m.events.build
  e.type = if m.active?
             if n.even?
               'logged_in'
             else
               'logged_out'
             end
           else
             'rejected'
           end
  e.occurred_at = (256 - n).hours.ago
  e.save!
end
