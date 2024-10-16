require 'rails_helper'

RSpec.describe "jits/show", type: :view do
  before(:each) do
    assign(:jit, Jit.create!(
      content: "Content",
      likes: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/2/)
  end
end
