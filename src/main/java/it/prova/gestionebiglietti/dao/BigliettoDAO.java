package it.prova.gestionebiglietti.dao;

import java.util.List;

import it.prova.gestionebiglietti.model.Biglietto;

public interface BigliettoDAO extends IBaseDAO<Biglietto> {

	public List<Biglietto> findByExample(Biglietto input) throws Exception;

}