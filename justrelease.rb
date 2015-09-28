class Justrelease < Formula
  homepage "https://github.com/justrelease"
  url "https://github.com/justrelease/justrelease/releases/download/v1.0.2/justrelease-1.0.2.zip"
  sha256 "6625e008d9710ab1581b13402deed0d1be1297a679424c54c1485f53fb562070"

  depends_on :java
  def install
       libexec.install "justrelease-#{version}.jar"
       (bin/"justrelease").write <<-EOS.undent
         #!/bin/sh
         JUSTRELEASE_HOME="#{libexec}"
         java -jar "$JUSTRELEASE_HOME/justrelease-#{version}.jar" $@
       EOS
  end
end
