package br.uninove.poo;

public class Curso {
    private String nome;
    private int ch;

    Curso() {
        
    }
    
    Curso(String nome, int ch) {
        this.nome = nome;
        this.ch = ch;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCh() {
        return ch;
    }

    public void setCh(int ch) {
        this.ch = ch;
    }
}
