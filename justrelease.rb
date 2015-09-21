class Justrelease < Formula
  homepage "https://github.com/justrelease"
  url "https://github.com/justrelease/justrelease/releases/download/v1.0.1/justrelease-1.0.1.zip"
  sha256 "a5d8893fe37e7a1846991a53ce81f29a05678def43cb6d65221b76c271fba35f"

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
