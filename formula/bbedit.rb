cask 'bbedit' do
  version '10.5.13'
  sha256 '2de7baf01ba12650e158e86c65bea72103eca840ab2de45121e3460d09a58ebd'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '25a635ee2d2a6c67de7bd49b2341106c4480c0ef8399aa4f158df1aaef3dd25c'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
