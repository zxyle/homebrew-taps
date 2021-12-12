class Builder < Formula
  include Language::Python::Virtualenv

  desc "Quickly create batteries included project"
  homepage "https://github.com/zxyle/builder"
  url "https://zxyle-homebrew.oss-cn-hangzhou.aliyuncs.com/tarballs/builder-0.0.3.tar.gz"
  sha256 "b694ed69e15dfb8bb75daa40210802197e5a5da50cf72c4e0a19fc8738e77b15"
  license "MIT"
  # revision 3
  head "https://github.com/zxyle/builder.git"

  # livecheck do
  #   url :stable
  # end
  bottle do
    root_url "https://zxyle-homebrew.oss-cn-hangzhou.aliyuncs.com/bottles"
    sha256 cellar: :any_skip_relocation, monterey: "e8597022c185f29d6374e2bc65e37247f92bcb3b3b0fa17cc0b99ad84a3142e0"
  end

  depends_on "python@3.9"

  resource "urllib3" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/80/be/3ee43b6c5757cabea19e75b8f46eaf05a2f5144107d7db48c7cf3a864f73/urllib3-1.26.7.tar.gz"
    sha256 "4987c65554f7a2dbf30c18fd48778ef124af6fab771a377103da0585e2336ece"
  end

  resource "idna" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/62/08/e3fc7c8161090f742f504f40b1bccbfc544d4a4e09eb774bf40aafce5436/idna-3.3.tar.gz"
    sha256 "9d643ff0a55b762d5cdb124b8eaa99c66322e2157b69160bc32796e824360e6d"
  end

  resource "chardet" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "certifi" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/6c/ae/d26450834f0acc9e3d1f74508da6df1551ceab6c2ce0766a593362d6d57f/certifi-2021.10.8.tar.gz"
    sha256 "78884e7c1d4b00ce3cea67b44566851c4343c120abd683433ce934a68ea58872"
  end

  resource "requests" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz"
    sha256 "b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7"
  end

  resource "MarkupSafe" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/bf/10/ff66fea6d1788c458663a84d88787bae15d45daa16f6b3ef33322a51fc7e/MarkupSafe-2.0.1.tar.gz"
    sha256 "594c67807fb16238b30c44bdf74f36c02cdf22d1c8cda91ef8a0ed8dabf5620a"
  end

  resource "Jinja2" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/91/a5/429efc6246119e1e3fbf562c00187d04e83e54619249eb732bb423efa6c6/Jinja2-3.0.3.tar.gz"
    sha256 "611bb273cd68f3b993fabdc4064fc858c5b47a973cb5aa7999ec1ba405c87cd7"
  end

  resource "python-editor" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/0a/85/78f4a216d28343a67b7397c99825cff336330893f00601443f7c7b2f2234/python-editor-1.0.4.tar.gz"
    sha256 "51fda6bcc5ddbbb7063b2af7509e43bd84bfc32a4ff71349ec7847713882327b"
  end

  resource "blessed" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/d2/44/13a1a790ff7433ad60f5d1a4867810e4411757ccc58fb1bf91465840d6ce/blessed-1.19.0.tar.gz"
    sha256 "4db0f94e5761aea330b528e84a250027ffe996b5a94bf03e502600c9a5ad7a61"
  end

  resource "readchar" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/16/2b/0cd0ba53d6dcdc4d69dcff68970c9b1347cc1d7f1c17ed4c15ec3a71a6e5/readchar-3.0.4.tar.gz"
    sha256 "3ce642ade5b61efee273b3c4bf55c77a84398178842627c74fcb796e1666ab13"
  end

  resource "six" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "wcwidth" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
  end

  resource "inquirer" do
    url "https://zxyle-homebrew.oss-cn-hangzhou.aliyuncs.com/other/inquirer-3.0.0.tar.gz"
    sha256 "7238b538a6b45c4770ba4e8a9af2876f309a9919a077a5995c52c5116c29b770"
  end

  def install
    ENV["PIP_DISABLE_PIP_VERSION_CHECK"] = "1"
    virtualenv_install_with_resources
    # TODO: manpage
    # TODO: bash_completion.install "contrib/completion/bash/docker-compose"
    # TODO: zsh_completion.install "contrib/completion/zsh/_docker-compose"
  end

  test do
    system bin/"builder", "--help"
  end
end
