# frozen_string_literal: true

RSpec.describe CmsCore do
  it "has a version number" do
    expect(CmsCore::VERSION).not_to be nil
  end
end
