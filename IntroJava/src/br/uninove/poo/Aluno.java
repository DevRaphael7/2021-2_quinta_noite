package br.uninove.poo;

                     //é
public class Aluno extends Pessoa {
    private int ra;
    
    Aluno(String nome, String email, int idade, int ra) {
        super(nome, email, idade);
        this.ra = ra;
    }
    
    Aluno() {
        super();
    }
  

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }
}