require "./spec_helper"

describe Urix do
  it "is a function" do
  end
  it "converts backslashes to slashes" do
    "a/b/c".should eq(Urix::Urix.urix("a\\b\\c"))
    "/a/b/c".should eq(Urix::Urix.urix("\\a\\b\\c"))
    "a/b/c".should eq(Urix::Urix.urix("a/b\\c"))
    "//a///b///c".should eq(Urix::Urix.urix("\\\\a\\\\\\b///c"))
  end

  it "changes the drive letter to a slash" do
    "/a".should eq(Urix::Urix.urix("c:\\a"))
    "/a".should eq(Urix::Urix.urix("C:\\a"))
    "/a".should eq(Urix::Urix.urix("z:\\a"))
    "/a".should eq(Urix::Urix.urix("c:a"))
    "/a".should eq(Urix::Urix.urix("c:/a"))
    "//a".should eq(Urix::Urix.urix("c:\\\\a"))
    "//a".should eq(Urix::Urix.urix("c://a"))
    "///a".should eq(Urix::Urix.urix("c:\\//a"))
  end
end
