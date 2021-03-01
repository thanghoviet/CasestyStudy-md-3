package dao;

import model.Account;
import model.Note;
import model.NoteType;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/inotes";
    private final String jdbcUsername = "root";
    private final String jdbcPassword = "password";

    private final String ADD_NEW_ACCOUNT = "INSERT INTO `inotes`.`account` ( `name`, `use_name`, `password`,"+
            " `email`, `phoneNumber`, `address`) VALUES (?, ?, ?,?, ?, ?);";
    private final String DELETE_ACCOUNT = "DELETE FROM `inotes`.`account` WHERE (`id` = ?);";
    private final String EDIT_ACCOUNT = "UPDATE `inotes`.`account` SET `name` = ?, `password` = ?,"+
            " `email` = ?, `phoneNumber` = ?, `address` =? WHERE (`id` = ?);" ;
    private final String SELECT_ACCOUNT = "SELECT * FROM `inotes`.`account`";
    private final String FIND_USER_PASS = "SELECT * FROM `inotes`.`account` WHERE use_name = ? and password = ?";

    public AccountDAO() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

    public Account findUserPass(String user, String pass) throws SQLException {
        Account account = null;
        try (Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(FIND_USER_PASS)) {
            statement.setString(1, user);
            statement.setString(2, pass);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String use_name = resultSet.getString("use_name");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String phoneNumber = resultSet.getString("phoneNumber");
                String address = resultSet.getString("address");
                account = new Account(id,name,use_name,password,email,phoneNumber,address);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return account;
    }
    public boolean checkUser(String user,String pass) throws SQLException {
        List<Account> listAccount = selectAllAccount();
        for (Account account : listAccount) {
            if (user.equals(account.getUse_name())&& pass.equals(account.getPassword())) {
                return true;
            }
        }
        return false;
    }

    public List<Account> selectAllAccount() {
        List<Account> accounts = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ACCOUNT)
        ) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String use_name = resultSet.getString("use_name");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String phoneNumber = resultSet.getString("phoneNumber");
                String address = resultSet.getString("address");
                accounts.add(new Account(id,name,use_name,password,email,phoneNumber,address));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return accounts;
    }

    public void addTheNewAccount(Account account) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_ACCOUNT)
        ) {
            preparedStatement.setString(1, account.getName());
            preparedStatement.setString(2, account.getUse_name());
            preparedStatement.setString(3, account.getPassword());
            preparedStatement.setString(4,account.getEmail());
            preparedStatement.setString(5,account.getPhoneNumber());
            preparedStatement.setString(6,account.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public boolean deleteAccountById(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_ACCOUNT)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public Account getAccountById(int id) {
        Account account = new Account();
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(EDIT_ACCOUNT)
        ) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String use_name = resultSet.getString("use_name");
                String password = resultSet.getString("password");
                String email = resultSet.getString("email");
                String phoneNumber = resultSet.getString("phoneNumber");
                String address = resultSet.getString("address");
                account = new Account(id, name, use_name,password,email,phoneNumber,address);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return account;
    }

    public boolean editAccountById(Account account) throws SQLException {
        boolean rowEdit;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(EDIT_ACCOUNT)
        ) {
            preparedStatement.setString(1, account.getName());
            preparedStatement.setString(3, account.getPassword());
            preparedStatement.setString(4,account.getEmail());
            preparedStatement.setString(5,account.getPhoneNumber());
            preparedStatement.setString(6,account.getAddress());
            preparedStatement.setInt(7,account.getId());
            rowEdit = preparedStatement.executeUpdate() > 0;
        }
        return rowEdit;
    }
}
