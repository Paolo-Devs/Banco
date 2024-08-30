programa {
  funcao inicio() {
    real saldo = 100,saque,deposito, menu
    cadeia controle,extrato = ""
    cadeia senha = "123", pswd
    
  escreva("Digite sua senha: ")
   leia(pswd)
   se(pswd == senha){

   enquanto (menu!=0){
    escreva("|------------------------|")
    escreva("\n|         Flypay         |")
    escreva("\n| 1. Saldo               |")
    escreva("\n| 2. Saque               |")
    escreva("\n| 3. Deposito            |")
    escreva("\n| 4. Extrato             |")
    escreva("\n| 0. Sair                |\n")
    escreva("|------------------------|\n")
      leia(menu)
      
 
      escolha(menu){
       caso 1:
        escreva("Seu saldo é de " + saldo, "\n")
        pare
        
        
       caso 2:
         escreva("Digite sua senha: ")
         leia(pswd)
         se(pswd == senha){
           escreva("Quantos você quer sacar?\n")
         leia(saque)
          enquanto(saque < 0 ){
          escreva("Valor invalido, digite novamente: ")
          leia (saque)
          
         }
         se(saque > saldo){
          escreva("Não autorizado!\n")
         }
         saldo = saldo - saque
         extrato = extrato +"Saque ----------> R$" + saque+ "\n"
         escreva("Saque realizado com sucesso!\n")
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()

         }
         senao{
          escreva("Senha Incorreta!\n")
          }
        
          pare
         
       caso 3:
         escreva("Digite sua senha: ")
         leia(pswd)
         se(pswd == senha){escreva("Digite o valor para depositar: ")
         leia(deposito)
         enquanto(deposito<0){
          escreva("Valor invalido, digite novamente: ")
          leia(deposito)
         }
         saldo = saldo + deposito
         extrato = extrato +"Deposito ----------> R$" + deposito + "\n"
         escreva("Deposito realizado com sucesso!\n")
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
         }

         senao{
          escreva("Senha Incorreta!\n")
          }
          
        pare

       caso 4:
        escreva("Digite sua senha: ")
         leia(pswd)
         se(pswd == senha){
        escreva(extrato)
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
         }
         senao{escreva("Senha Incorreta!!\n")}
        pare


         
     }
    }
   }
   senao{escreva("Senha Incorreta!!")}
  }





  }

