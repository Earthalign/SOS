package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "book")
public class Book {

    @Id
    private Long id;

    // TODO dodac reszte atrybutów / pól zgodnie z bazą danych

}
