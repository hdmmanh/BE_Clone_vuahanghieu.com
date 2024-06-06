package com.example.assignment_java5;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootApplication
public class AssignmentJava5Application implements CommandLineRunner {
    @Autowired
    private DataSource dataSource;
    public static void main(String[] args) {
        SpringApplication.run(AssignmentJava5Application.class, args);
    }
    @Override
    public void run(String... args) throws Exception {
        try (Connection connection = dataSource.getConnection()) {
            if (connection != null) {
                System.out.println("Kết nối thành công");
            } else {
                System.out.println("Failed to make connection!");
            }
        } catch (SQLException e) {
            System.err.println("SQLException: " + e.getMessage());
        }
    }

}
