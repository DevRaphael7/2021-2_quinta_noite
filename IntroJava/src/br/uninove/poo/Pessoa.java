package br.uninove.poo;

public class Pessoa {
    private String nome;
    private String email;
    private int idade;
    
    //String, String, int
    Pessoa(String nome, String email, int idade) {
        this.nome = nome;
        this.email = email;
        this.idade = idade;
    }
    
    Pessoa(){}
    
    //encapsulamento:
    //três passos:
    //1º passo: private nos atributos
    //2º passo: um set para cada atributo (tó)
    //3º passo: um get para cada atributo (me dá)

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
    
 
}