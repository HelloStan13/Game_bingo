package com.users.service;

import com.users.domain.Usuario;

import java.util.List;
import java.util.Optional;

public interface IUsuarioService {

    public List<Usuario> list();

    public Usuario save(Usuario usuario);

    public Usuario update(Long id, Usuario usuario);

    public void delete(Usuario usuario);

    public Optional<Usuario> findUser(Usuario usuario);

}