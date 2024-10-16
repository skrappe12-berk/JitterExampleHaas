require 'rails_helper'

RSpec.describe "jits/edit", type: :view do
  let(:jit) {
    Jit.create!(
      content: "MyString",
      likes: 1
    )
  }

  before(:each) do
    assign(:jit, jit)
  end

  it "renders the edit jit form" do
    render

    assert_select "form[action=?][method=?]", jit_path(jit), "post" do

      assert_select "input[name=?]", "jit[content]"

      assert_select "input[name=?]", "jit[likes]"
    end
  end
end
