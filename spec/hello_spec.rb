require "rails_helper"
describe String do
  it "empty string" do
    expect(nil.to_s).to eq("")
  end
  it "model job new test" do
    j = Job.new
    expect(j.nil?).to eq(false)
  end
  it "model job build" do
    j = build(:job)
    expect(j.nil?).to eq(false)
  end
  it "model job build" do
    j = build(:job)
    expect(j.nil?).to eq(false)
  end
  it "model job build location" do
    j = build(:job)
    expect(j.location).to eq("東京")
  end
  it "model job location over 20 chars" do
    j = Job.new 
    j.location = "東京都東京都東京都東京都東京都東京都東京都東京都東京都東京都"
    expect{j.save!}.to raise_error(/maximum is/)
  end
end
