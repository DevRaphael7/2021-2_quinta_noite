package br.uninove.poo;

public class Principal {
    public static void main(String[] args) {
        Pessoa p1 = new Pessoa();
        Pessoa p2 = new Pessoa("Josefina", "josefina@unidoce.com", 70);
        Pessoa p3 = new Pessoa();
        
        p1.setIdade(30);
        p1.setNome("Thiago Traue");
        p1.setEmail("thiago.traue@uni9.pro.br");
        
        
        System.out.println("Nome da primeira pessoa: " + p1.getNome()); //Thiago Traue
        System.out.println("Nome da segunda pessoa: " + p2.getNome()); //Josefina
        System.out.println("Nome da terceira pessoa: " + p3.getNome()); // ?
        
        p3.setNome("Mr Bean");
        
        System.out.println("Nome da terceira pessoa: " + p3.getNome()); // Mr Bean
        
        Aluno a1 = new Aluno();
        a1.setRa(123);
        a1.setNome("Félix");
        a1.setEmail("feliz@uninove.br");
        a1.setIdade(25);
        
        Aluno a2 = new Aluno("Beltrano", "beltrano@bla.com", 17, 420);
        
        System.out.println("Nome do primeiro aluno: " + a1.getNome());

    }
}