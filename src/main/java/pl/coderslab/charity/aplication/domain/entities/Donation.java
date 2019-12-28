package pl.coderslab.charity.aplication.domain.entities;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "donations")
@Getter
@Setter
@ToString(exclude = {"institutions", "categories"})
@EqualsAndHashCode(of = "id")
public class Donation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable=false)
    private Long quantity;

    @ManyToMany
    private List<Category> categories = new ArrayList<>();

    @ManyToOne
    private Institution institutions;

    @Column(nullable=false)
    private String street;

    @Column(nullable=false)
    private String city;

    @Column(nullable=false)
    private String zipCode;

    @Column(nullable=false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate pickUpDate;

    @Column(nullable=false)
    private LocalTime pickUpTime;

    private String pickUpComment;

}
