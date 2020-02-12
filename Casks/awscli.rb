cask 'awscli' do
  version '2.0.0'
  sha256 'a99c26cd2b5655970db91259a247f585aea32cfb7347e1a28a25b6f6484b16dc'

  url 'https://awscli.amazonaws.com/AWSCLIV2.pkg'
  name 'AWS Command Line Interface'
  homepage 'https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html'

  auto_updates false
  conflicts_with formula: 'awscli'
  depends_on macos: '>= :high_sierra'

  pkg 'AWSCLIV2.pkg'

  uninstall pkgutil: 'com.amazon.aws.cli2'

  caveats do
    files_in_usr_local
  end
end

