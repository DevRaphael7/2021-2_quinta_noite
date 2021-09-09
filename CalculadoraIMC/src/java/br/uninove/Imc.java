package br.uninove;

public class Imc {
    private float peso;
    private float altura;
    private String classficacao;

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public String getClassficacao() {
        return classficacao;
    }

    public void setClassficacao(String classficacao) {
        this.classficacao = classficacao;
    }
    
    public float calculaImc() {
        float imc = peso / (altura * altura);
        geraClassificacao(imc);
        return imc;
    }
    
    //classificação baseada na table disponível em:
    //https://arquivos.sbn.org.br/equacoes/eq5.htm
    private void geraClassificacao(float imc) {
        if(imc < 16) {
            classficacao = "Magreza grau III";
        } else if(imc >= 16 && imc <= 16.9) {
            classficacao = "Magreza grau II";
        } else if(imc > 16.9 && imc <= 18.4) {
            classficacao = "Magreza grau I";
        } else if(imc > 18.4 && imc <= 24.9) {
            classficacao = "Adequado";
        } else if(imc > 24.9 && imc <= 29.9) {
            classficacao = "Pré-obeso";
        } else if(imc > 29.9 && imc <= 34.9) {
            classficacao = "Obesidade grau I";
        } else if(imc > 34.9 && imc <= 39.9) {
            classficacao = "Obesidade grau II";
        } else {
            classficacao = "Obesidade grau III";
        }
    }
}
