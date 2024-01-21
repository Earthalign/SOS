package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {

    @Id
    private Long id;

    // TODO dodac reszte atrybutów / pól zgodnie z bazą danych

}
