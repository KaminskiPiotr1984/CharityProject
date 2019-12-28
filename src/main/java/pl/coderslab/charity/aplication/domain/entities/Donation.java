package pl.coderslab.charity.aplication.domain.entities;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "donations")
@Getter
@Setter
@ToString
@EqualsAndHashCode(of = "id")
public class Donation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable=false)
    private Long quantity;

//    @ManyToMany
//    @Column(nullable=false)
//    private List<Category> categories = new ArrayList<>();
//
//    @ManyToOne
//    @Column(nullable=false)
//    private Institution institutions;

    @Column(nullable=false)
    private String street;

    @Column(nullable=false)
    private String city;

    @Column(nullable=false)
    private String zipCode;

    @Column(nullable=false)

    @GeneratedValue(strategy = GenerationType.AUTO)
    private LocalDate pickUpDate;

    @GeneratedValue(strategy = GenerationType.AUTO)
    private LocalTime pickUpTime;
    private String pickUpComment;

}
