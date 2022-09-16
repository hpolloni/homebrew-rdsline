class Rdsline < Formula
  include Language::Python::Virtualenv
  desc "REPL for RDS Data API"
  homepage "https://github.com/hpolloni/rdsline"
  url "https://files.pythonhosted.org/packages/d4/b4/58f00301af77dd075c6094d3ff96fb4fabf93476ea314a20b6be070d5f95/rdsline-0.4.5.tar.gz"
  sha256 "0d0cd5ce606fea792ed8ac2db652d5ff1604cf12eaf2bdc6c06e39002255eb84"

  depends_on "python@3.8"
  resource "boto3" do
    url "https://files.pythonhosted.org/packages/a4/d5/28947cd78711ead30a109b0d31602e6fd9efa38f1c2b7903af139b898965/boto3-1.24.66.tar.gz"
    sha256 "60003d2b83268a303cf61b78a0b59ebe2abe87e2f21308b55a99f25fd9bca4db"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/0d/72/3e94737e6eeb2f760e57fce15498a8d43c4c0939b35ce576310de9a9713a/botocore-1.27.66.tar.gz"
    sha256 "6c8c8c82b38ba2353bd3bc071019ab44d8a160b9d17f3ab166f0ceaf1ca38c12"
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
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
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
