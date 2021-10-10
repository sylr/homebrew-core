class Yage < Formula
  desc "age with YAML support"
  homepage "https://github.com/sylr/yage"
  url "https://github.com/sylr/yage.git", :using => :git, :tag => "v1.0.0"
  license "BSD-3-Clause"
  head "https://github.com/sylr/yage.git", branch: "master"

  depends_on "age" # for age-keygen
  depends_on "make" => :build
  depends_on "git" => :build
  depends_on "go" => :build

  def install
    mkdir bin
    system "make", "dist/yage"
    bin.install "dist/yage"
  end
end
