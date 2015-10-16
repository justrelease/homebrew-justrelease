class Justrelease < Formula
  homepage "https://github.com/justrelease"
  url "https://github.com/justrelease/justrelease/releases/download/v1.1.4/justrelease-1.1.4.zip"
  sha256 "ceb4efd4662d262ae919b7ae585cb0223ab260bb1dfd337561c8ee45366c09a5"

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
