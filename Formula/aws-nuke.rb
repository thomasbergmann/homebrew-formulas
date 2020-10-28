class AwsNuke < Formula
  desc     "Nuke a whole AWS account"
  homepage "https://github.com/rebuy-de/aws-nuke"
  version  "2.14.0"
  url      "https://github.com/rebuy-de/aws-nuke/releases/download/v#{version}/aws-nuke-v#{version}-darwin-amd64"
  sha256   "95f896396932de0d8b95d711d720b770b09dd73d050df2f078886bef19a4cdc2"

  bottle :unneeded

  def install
    bin.install "aws-nuke-v#{version}-darwin-amd64" => "aws-nuke"
  end

  test do
    system "#{bin}/aws-nuke version"
  end
end
