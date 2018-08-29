class Aren55555 < Formula
  desc "aren55555 CLI tool"
  homepage "https://github.com/aren55555/aren55555"
  url "https://github.com/aren55555/aren55555.git"
  head "https://github.com/aren55555/aren55555.git"

  depends_on "go"

  def install
    ENV["GOPATH"] = buildpath
    arch = MacOS.prefer_64_bit? ? "amd64" : "386"
    (buildpath/"src/github.com/aren55555/aren55555").install buildpath.children
    cd "src/github.com/aren55555/aren55555" do
      system "script/build.bash"
      bin.install "aren55555" => "aren55555"
    end
  end
end
