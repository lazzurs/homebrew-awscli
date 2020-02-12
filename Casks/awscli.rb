cask 'awscli' do
  version '2.0.0'
  sha256 '98e26e3dc2fadc3563ef1add6bc2cdaefa986462aeae256a20e894e16118a179'

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

