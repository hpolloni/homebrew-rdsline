class Rdsline < Formula
  include Language::Python::Virtualenv
  desc "REPL for RDS Data API"
  homepage "https://github.com/hpolloni/rdsline"
  url "https://files.pythonhosted.org/packages/fd/21/e2d4a5a4bd77f96d827b0976552ff3be8b7eff0de0f0377c255ca21e9ea1/rdsline-0.4.4.tar.gz"
  sha256 "a737a6e06883ffb05bf4fba5c44a4cad2a0de5b6db27d5ecdb6212df406aa3c3"

  depends_on "python@3.8"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/3e/77/716a16c5173e34aeaadc2c89f386140087ec199dcfb2b26250640bd70d04/boto3-1.24.72.tar.gz"
    sha256 "2e502227bfb67fe83b6d61ef9dacd49297bcb631d005cf27b5e54f65064c6e6d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/ab/9c/c790ba19f53e1ea7cfb96ca413012dcfcbbf82af1340e37becf7d2378ce0/botocore-1.27.72.tar.gz"
    sha256 "6184ab43a59118541b88e0ede24ccd671553323ace95bb7c8de3082a5cc581cb"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/36/2b/61d51a2c4f25ef062ae3f74576b01638bebad5e045f747ff12643df63844/PyYAML-6.0.tar.gz"
    sha256 "68fb519c14306fec9720a2a5b45bc9f0c8d1b9c72adf45c37baedfcd949c35a2"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
    sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/7a/53/afac341569b3fd558bf2b5428e925e2eb8753ad9627c1f9188104c6e0c4a/tabulate-0.8.10.tar.gz"
    sha256 "6c57f3f3dd7ac2782770155f3adb2db0b1a269637e42f27599925e64b114f519"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b2/56/d87d6d3c4121c0bcec116919350ca05dc3afd2eeb7dc88d07e8083f8ea94/urllib3-1.26.12.tar.gz"
    sha256 "3fa96cf423e6987997fc326ae8df396db2a8b7c667747d47ddd8ecba91f4a74e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"rdsline", "--help"
  end

end
