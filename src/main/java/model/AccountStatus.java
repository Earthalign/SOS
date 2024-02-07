package model;

import javax.persistence.*;

@Entity
@Table(name = "ACCOUNTSTATUS")
public class AccountStatus {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ACCOUNTSTATUS_ID")
    private int accountStatusId;

    @Column(name = "ACCOUNTSTATUS")
    private String status;

    // Getters and setters
    public int getAccountStatusId() {
        return accountStatusId;
    }

    public void setAccountStatusId(int accountStatusId) {
        this.accountStatusId = accountStatusId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
