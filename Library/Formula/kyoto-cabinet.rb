require 'formula'

class KyotoCabinet <Formula
  url 'http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.26.tar.gz'
  homepage 'http://fallabs.com/kyotocabinet/'
  md5 'ac0e13208b5391414462d89263227d24'

  def install
    system "./configure", "--disable-debug", "--prefix=#{prefix}"
    system "make" # Separate steps required
    system "make install"
  end
end
