package br.edu.utfpr.overcookedrecipes.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "comments")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String text;

    @ManyToOne
    @JoinColumn(name = "recipe_id")
    @NonNull
    private Recipe recipe;

//    @ManyToOne
//    private City city;
}
