using System;
using System.Text;

namespace EasyInnerSDK.Entity
{
    public class Bilhete
    {
        // Declaração
        public byte Tipo;
        public byte Dia;
        public byte Mes;
        public byte Ano;
        public byte Hora;
        public byte Minuto;
        public StringBuilder Cartao { get; set; }
        public byte Origem;
        public byte Complemento;
        public byte Segundo;
        public string Direcao { get; set; }
        public Bilhete()
        {
            Cartao = new StringBuilder();
        }

        public override string ToString()
        {
            return "Tipo: " + Tipo + " Origem: " + Origem + " Complemento: " + Complemento + " Cartão: " + Cartao +
                   " " + Hora + ":" + Minuto + ":" + Segundo + " " + Dia + "/" + Mes + "/" + Ano +
                   " Sentido: " + Direcao;
        }

    }
}
