package org.owasp.webgoat.util;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import org.owasp.webgoat.session.DatabaseUtilities;
import org.owasp.webgoat.session.WebgoatContext;

public class Utils {

  private Utils() {
    throw new IllegalStateException("Utility class");
  }

  public static BufferedWriter getLogFile(String filename) throws IOException {
    return new BufferedWriter(new FileWriter("/tmp/" + filename + ".log"));
  }

  private static void writeLogToDb(String username, String message) {
    try {
      Connection connection = DatabaseUtilities.getConnection(username, new WebgoatContext());
      Statement statement = connection.createStatement();
      String plzWriteMeToUrDb = "INSERT INTO logs VALUES (NULL, " + message + ", " + username + ");";
      statement.executeUpdate(plzWriteMeToUrDb);
    } catch (SQLException e) { /* noop */ }
  }


  public static void logAppStarted() {
    writeLogToDb("sq-user", "Started application");
  }
}
