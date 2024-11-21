# **Repositório Eletrônica Digital II**

<!-- Não presente nos encontros 1 a 3 -->
## **Estrutura do código VHDL**

- ### Declaração de Biblioteca e Pacotes
```
library library_name;
use library_name.package_name.all;
```
- ### Entidade

```
entity entity_name is
   [generic (
     cons_name1: const_type const_value;
     cons_nameN: const_type const_value);]
   [port (
     signal_name1: mode signal_type;
     signal_nameN: mode signal_type);]
   [declarative_part]
 [begin
   statement_part]
 end [entity] [entity_name];
```

- ### Arquitetura
```
architecture arch_name of entity_name is
   [declarative_part]
 begin
   statement_part
 end [architecture] [arch_name];
```

- ### Configuração
```
CONFIGURATION <configuration_name> OF <entity_name> IS
   FOR <architecture_name> END FOR;
   FOR <architecture_name> END FOR;
   FOR <architecture_name> END FOR;
END CONFIGURATION;
```
- ### Processos
```
[rótulo:] PROCESS [(lista_de_sensibilidade)] [IS]
             [parte_declarativa]
         BEGIN
             afirmação_sequencial;
             afirmação_sequencial;
             ...
         END PROCESS [rótulo];

```

### Modelo Registrador
```
process(clk,reset)
 begin
   if (reset='1') then
      r_reg <= (others=>'0');
   elsif (clk'event and clk='1') then
      r_reg <= r_next;
   end if;
 end process;
```



### Instruções 
- WHEN_ELSE
- WITH_SELECT

```
architecture v_WHEN_ELSE of mux4x1 is
begin
 Y <= X(0) when Sel = "00" else
      X(1) when Sel = "01" else
      X(2) when Sel = "10" else
      X(3);
end architecture;
```
```
architecture v_WITH_SELECT of mux4x1 is

begin
 with Sel select
 Y <= X(0) when "00",   
      X(1) when "01",
      X(2) when "10",
      X(3) when others;         
end architecture;
```

### Flip-Flop e Circuitos Sequenciais

```
--Flip Flop tipo D com reset assincrono, sensivel a borda de subida.

process (clock,reset)
begin
   if (reset = '1') then
      q <= '0';
-- elsif (clock'event and clock = '1') then or
   elsif (rising_edge(clock)) then
      q <= d;
   end if;
end process;
```

```
--Flip Flop tipo D com preset assincrono e sinal de enable, sensivel a borda de descida.

process (clock, preset)
begin
   if (preset = '1') then
      q <= '1';
   elsif (falling_edge(clock)) then
      if (enable = '1') then
         q <= d;
      end if;
   end if;
end process;
```

- ### If Else

```
[rótulo:] IF condição THEN
             afirmação_sequencial;
             afirmação_sequencial;
             ...
         ELSIF condição THEN
             afirmação_sequencial;
             afirmação_sequencial;
             ...
         ELSE
             afirmação_sequencial;
             afirmação_sequencial;
             ...
         END IF [rótulo];
```

### Latch D

```
--Latch tipo D com reset assincrono.
process (enable, reset, d)
begin
   if (reset = '1') then
      q <= '0';
   elsif (enable='1') then
      q <= d;
   end if;
end process;
```

### For Generate 

```
-- Instrução concorrente FOR GENERATE.
-- Note que neste caso o '''label''' é obrigatório

label: FOR identificador IN faixa GENERATE
   [Parte_Declarativa
BEGIN]
   Instruções_concorrentes
   ...
END GENERATE [label];

--> Estruturas Concorrentes: When_Else, With_Select, For_Generate
--> Estruturas Sequenciais: If_Then, Wait, Case, Loop
```

### Loop
````
[rótulo:] LOOP
             afirmação_sequencial;
             afirmação_sequencial;
             ...
          END LOOP [rótulo];

[rótulo:] FOR identificador IN faixa LOOP
             afirmação_sequencial;
             afirmação_sequencial;
             ...
          END LOOP [rótulo];

[rótulo:] WHILE condição LOOP            -- Executa as "afirmações enquanto a "condição" for verdadeira
             afirmação_sequencial;
             afirmação_sequencial;
             ...
          END LOOP [rótulo];

[rótulo:] [FOR identificador IN faixa] LOOP
             afirmação_sequencial;
             EXIT [rótulo] [WHEN condição];    -- Se a "condição" é verdadeira, termina o "LOOP"
             afirmação_sequencial;
             ...
          END LOOP [rótulo];

[rótulo:] [FOR identificador IN faixa] LOOP
             afirmação_sequencial;
             NEXT [rótulo] [WHEN condição];    -- Se a "condição" é verdadeira, não executa as linhas até a linha "END LOOP"
                                               -- e incrementa o "identificador".
             afirmação_sequencial;
             ...
          END LOOP [rótulo];          
````

### Case  

``` 
[rótulo opcional:] CASE expressão IS
                  WHEN valor =>                             -- valor único
                    afirmação_sequencial;                            
                    afirmação_sequencial;                            
                    ...
                  WHEN valor1 | valor2 | ... | valorN  =>   -- lista de valores
                    afirmação_sequencial;                            
                    afirmação_sequencial;                            
                    ...
                  WHEN valor1 TO valor2 =>                  -- faixa de valores
                    afirmação_sequencial;                            
                    afirmação_sequencial; 
                    ...
                  WHEN OTHERS  =>                          -- para evitar latches
                    afirmação_sequencial;                            
                    afirmação_sequencial; 
                    ...
          END CASE;

```


### Anotações
- Variáveis só podem ser utilizadas dentro de process

