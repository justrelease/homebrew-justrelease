class Justrelease < Formula
  homepage "https://github.com/justrelease"
  url "https://github.com/justrelease/justrelease/releases/download/v1.1.5/justrelease-core-1.1.5.zip"
  sha256 "2addb86bf07b88a78a0fa932a86e9f1c6fe3c6b4120124699498896a91e299c3"

  depends_on :java
  def install
       libexec.install Dir["*.jar"]
       (bin/"justrelease").write <<-EOS.undent
         #!/bin/sh
         JUSTRELEASE_HOME="#{libexec}"
         java -jar "$JUSTRELEASE_HOME/justrelease-#{version}.jar" $@
       EOS
  end
end
