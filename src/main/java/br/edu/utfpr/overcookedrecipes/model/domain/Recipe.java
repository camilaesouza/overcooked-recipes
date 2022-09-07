package br.edu.utfpr.overcookedrecipes.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "recipes")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String title;
    @NonNull
    private String description;
    @NonNull
    private String prepare;

    public Recipe(Long id, String title, String description, String prepare) {
    }
}
