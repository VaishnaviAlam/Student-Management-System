package controller.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.dbconnection.DBConnection;
import controller.entity.Student;



public class StudentService {

    private Connection connection;

    public StudentService() {
        connection = DBConnection.getConnection();
    }

    // Save Student
    public int save(Student student) {

        String sql = "INSERT INTO studentt(stuid, stuname, age, gender, email, phone, course, address) VALUES(?,?,?,?,?,?,?,?)";

        try {

            PreparedStatement pstm = connection.prepareStatement(sql);

            pstm.setInt(1, student.getId());
            pstm.setString(2, student.getName());
            pstm.setInt(3, student.getAge());
            pstm.setString(4, student.getGender());
            pstm.setString(5, student.getEmail());
            pstm.setString(6, student.getPhone());
            pstm.setString(7, student.getCourse());
            pstm.setString(8, student.getAddress());

            return pstm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    // Update Student
    public int update(Student student) {

        String sql = "UPDATE studentt SET stuname=?, age=?, gender=?, email=?, phone=?, course=?, address=? WHERE stuid=?";

        try {

            PreparedStatement pstm = connection.prepareStatement(sql);

            pstm.setString(1, student.getName());
            pstm.setInt(2, student.getAge());
            pstm.setString(3, student.getGender());
            pstm.setString(4, student.getEmail());
            pstm.setString(5, student.getPhone());
            pstm.setString(6, student.getCourse());
            pstm.setString(7, student.getAddress());
            pstm.setInt(8, student.getId());

            return pstm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    // Delete Student
    public int delete(int id) {

        String sql = "DELETE FROM studentt WHERE stuid=?";

        try {

            PreparedStatement pstm = connection.prepareStatement(sql);

            pstm.setInt(1, id);

            return pstm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;
    }

    // Fetch All Students
    public List<Student> fetchAll() {

        List<Student> list = new ArrayList<>();

        String sql = "SELECT * FROM studentt";

        try {

            PreparedStatement pstm = connection.prepareStatement(sql);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {

                Student student = new Student(
                        rs.getInt("stuid"),
                        rs.getString("stuname"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("course"),
                        rs.getString("address"));

                list.add(student);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    // Fetch Student By ID
    public Student fetchById(int id) {

        String sql = "SELECT * FROM studentt WHERE stuid=?";

        Student student = null;

        try {

            PreparedStatement pstm = connection.prepareStatement(sql);

            pstm.setInt(1, id);

            ResultSet rs = pstm.executeQuery();

            if (rs.next()) {

                student = new Student(
                        rs.getInt("stuid"),
                        rs.getString("stuname"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("course"),
                        rs.getString("address"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return student;
    }

}
