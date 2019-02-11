package com.example.algamoney.api.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.example.algamoney.api.model.Usuario;

public class UsuarioSistema extends User {

	private static final long serialVersionUID = -2728118216885161834L;

	private Usuario usuario;

	public UsuarioSistema(String username, String password, Collection<? extends GrantedAuthority> authorities,
			Usuario usuario) {
		super(usuario.getEmail(), usuario.getSenha(), authorities);
		this.usuario = usuario;
	}

	public Usuario getUsuario() {
		return usuario;
	}
	
}
