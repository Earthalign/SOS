package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "account")
public class Account {

    @Id
    private Long id;

   // TODO dodac reszte atrybutów / pól zgodnie z bazą danych

}
