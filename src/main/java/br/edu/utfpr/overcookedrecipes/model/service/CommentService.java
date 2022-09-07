package br.edu.utfpr.overcookedrecipes.model.service;

import br.edu.utfpr.overcookedrecipes.model.dao.CommentDAO;
import br.edu.utfpr.overcookedrecipes.model.domain.Comment;
import br.edu.utfpr.overcookedrecipes.model.dto.CommentDTO;
import br.edu.utfpr.overcookedrecipes.model.mapper.CommentMapper;

import java.util.ArrayList;
import java.util.List;

public class CommentService extends AbstractService<Long, Comment>{

    public CommentService() {
        dao = new CommentDAO();
    }

    public List<CommentDTO> getCommentsByRecipe(Long id) {
        List<Comment> listAll = findAll();
        List<CommentDTO> list = new ArrayList<>();
        for(Comment c : listAll)
            if (c.getRecipe().getId() == id) {
                CommentDTO commentDTO = CommentMapper.toDTO(c);
                list.add(commentDTO);
            }

        return list;
    }
}
