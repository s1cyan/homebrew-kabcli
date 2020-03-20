# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Kabcli < Formula
  desc "kabanero cli test description"
  homepage "https://kabanero.io/"
  url "https://github.com/kabanero-io/kabanero-command-line/releases/download/0.7.0/kabanero-0.7.0-homebrew-amd64.tar.gz"
#   url "https://github.com/s1cyan/kabanero-command-line.git"
  sha256 "5fb6e88a4f7b0b309b7eba96f4d12311b6e61f4c96fa584c78c1a8e19abbcdbc"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
#     system "make", "build-darwin"
    bin.install "kabanero"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kabanero-command-line`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
