class Builder < Formula
  include Language::Python::Virtualenv

  desc "Quickly generate scaffolding projects"
  homepage "https://github.com/zxyle/builder"
  url "https://zxyle-homebrew.oss-cn-hangzhou.aliyuncs.com/tarballs/builder-0.0.1.tar.gz"
  sha256 "2892266b490f4004e198e24085a37a029635f1cdc366b1dee2524f7174c9ccf0"
  license "MIT"
  # revision 3
  head "https://github.com/zxyle/builder.git"

  # livecheck do
  #   url :stable
  # end
  bottle do
    root_url "https://zxyle-homebrew.oss-cn-hangzhou.aliyuncs.com/bottles"
    sha256 cellar: :any_skip_relocation, big_sur: "da7f1c8fa5989504dbbd707c7feb4b849ba19802843fd985a7799cacec9408db"
  end

  # bottle do
  #   cellar :any
  #   sha256 "08525974a3404b234d7de572fea0f6095c3e6749df9fc192d571b1f815f00f3d" => :big_sur
  #   sha256 "f147a50464261bd34bd8af04390584badc4241e9d37ca54332fe7dac07e1d570" => :arm64_big_sur
  #   sha256 "94142a948bb19d5f80bf22d7c3aab0778ef48a0900ba1d8fd454fa070de31844" => :catalina
  #   sha256 "8cb911e8ce3f82f81c7fde523269118c9986d2524fb7f6b45137636c7b9c418c" => :mojave
  # end

  depends_on "python@3.9"

  resource "urllib3" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/cb/cf/871177f1fc795c6c10787bc0e1f27bb6cf7b81dbde399fd35860472cecbc/urllib3-1.26.4.tar.gz"
    sha256 "e7b021f7241115872f92f43c6508082facffbd1c048e3c6e2bb9c2a157e28937"
  end

  resource "idna" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/9f/24/1444ee2c9aee531783c031072a273182109c6800320868ab87675d147a05/idna-3.1.tar.gz"
    sha256 "c5b02147e01ea9920e6b0a3f1f7bb833612d507592c837a6c49552768f4054e1"
  end

  resource "chardet" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz"
    sha256 "0d6f53a15db4120f2b08c94f11e7d93d2c911ee118b6b30a04ec3ee8310179fa"
  end

  resource "certifi" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/06/a9/cd1fd8ee13f73a4d4f491ee219deeeae20afefa914dfb4c130cfc9dc397a/certifi-2020.12.5.tar.gz"
    sha256 "1a4995114262bffbc2413b159f2a1a480c969de6e6eb13ee966d470af86af59c"
  end

  resource "requests" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/6b/47/c14abc08432ab22dc18b9892252efaf005ab44066de871e72a38d6af464b/requests-2.25.1.tar.gz"
    sha256 "27973dd4a904a4f13b263a19c866c13b92a39ed1c964655f025f3f8d3d75b804"
  end

  resource "MarkupSafe" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz"
    sha256 "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b"
  end

  resource "Jinja2" do
    url "https://mirrors.cloud.tencent.com/pypi/packages/4f/e7/65300e6b32e69768ded990494809106f87da1d436418d5f1367ed3966fd7/Jinja2-2.11.3.tar.gz"
    sha256 "a6d58433de0ae800347cab1fa3043cebbabe8baa9d29e668f1c768cb87a333c6"
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
