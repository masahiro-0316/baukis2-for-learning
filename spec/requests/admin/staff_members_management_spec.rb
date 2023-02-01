require "rails_helper"

descrive "管理者による職員管理" do
  let(:administrator) { create(:administrator) }

  descrive "新規登録" do
    let(:params_hash) { attributes_for(:staff_member) }
  end

  descrive "更新" do
    let(:staff_member) { create(:staff_member) }
    let(:params_hash) { attributes_for(:staff_member) }
  end
end