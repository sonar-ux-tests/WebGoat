package org.owasp.webgoat.util;

import java.io.BufferedWriter;
import java.io.IOException;

public class SQLogger {

  private SQLogger() {
    throw new IllegalStateException("Utility class");
  }

  public static void log(String message) throws IOException {
    BufferedWriter writer = Utils.getLogFile(System.getProperty("logFile"));
    writer.write(message);
    writer.close();

    Utils.logAppStarted();
  }

}
