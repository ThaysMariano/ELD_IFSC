# **Repositório Eletrônica Digital II**

<!-- Não presente nos encontros 1 a 3 -->
## **Estrutura do código VHDL**

- ### Declaração de biblioteca e pacotes
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


## Encontro 4
### Conhecer instruções 
- WHEN_ELSE
- WITH_SELECT
- CONFIGURATION

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


```
CONFIGURATION <configuration_name> OF <entity_name> IS
	FOR <architecture_name> END FOR;
END CONFIGURATION;
```