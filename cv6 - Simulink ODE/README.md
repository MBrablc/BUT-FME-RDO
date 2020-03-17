# Cvičení 6 - Simulink - první ODE


## Tři sinusovky a šum 
* vykreslete průběh součtu tří sinusových signálů s různnými amplitudami a frekvencemi
* Přidejte k signálu šum (blok - Random number)
* pokuste se signál filtrovat libovolnou metodou (plovoucí průměr)
* vykreslete srovnání původního, zašuměného a filtrovaného signálu v jednom grafu
* zpoždění, frekvenční odezva, derivace, Fourier

## Důležité bloky a funkce simulinku
* logické bloky, switche
* derivace, integrál
* transfer function
* knihovna funkcí - důležité bloky
* nastavení simulace, algebraická smyčka/zpětná vazba
  * refine factor, řešič, step, 
* parametry z workspace matlabu
* Import/export dat z/do Matlabu
* spuštění símulace z matlabu (příkaz **sim**)
* masky


## Povinný úkol - model DC motoru
* ![u = Ri(t) + L\frac{di(t)}{dt}+c_{\phi}\omega(t)](https://render.githubusercontent.com/render/math?math=u%20%3D%20Ri(t)%20%2B%20L%5Cfrac%7Bdi(t)%7D%7Bdt%7D%2Bc_%7B%5Cphi%7D%5Comega(t))
* ![J\frac{d\omega(t)}{dt} = c_{\phi}i(t) - b\omega(t) - M_z](https://render.githubusercontent.com/render/math?math=J%5Cfrac%7Bd%5Comega(t)%7D%7Bdt%7D%20%3D%20c_%7B%5Cphi%7Di(t)%20-%20b%5Comega(t)%20-%20M_z)
  
  * *parametry**
  * odpor vinutí R = 1.2 ![\Omega](https://render.githubusercontent.com/render/math?math=%5COmega)
  * indukčnost  L = 3.4 mH
  * konstanta motoru c_{phi} = 1.6 Vs
  * moment setrvačnosti J = 0.027 ![kg\cdot m^2](https://render.githubusercontent.com/render/math?math=kg%5Ccdot%20m%5E2)
  * koeficient viskózního tření b = 0.08

  * **Vstupy**
  * namětí u (V)
  * zátěžný moment ![M_z](https://render.githubusercontent.com/render/math?math=M_z) (Nm)
  *  **Výstupy** 
  *  úhel natočení hřídele
  *  úhlová rychlost
  *  proud vinutím

* simulujte chování motoru a testujte vliv parametrů a vstupů na jeho chování
* spuštění simulace/vykreslení dat v Matlabu
* marametry v samostatném skriptu v matlabu

## Úkoly pro procvičení - sestavení ODE v simulinku
* rovnice se pokuste odvodit sami, případně hledejte
* všechny předchozí příklady, které jsme řešili v matlabu, včetně testových
* RC/RL/CL článek, různé serioparalelní kombinace RLC 
* tři nádrže - tři nádoby nad sebou, voda přitéká do té prví (nahoře). První a druhá nádoba mají u dna díru, kterou voda odtéká do druhé, resp. třetí nádoby. Simuliujte plnění nádob. **Jaké mohou být stavy systému? (více variant, odpověď napište na teams ať o tom můžeme debatovat :-) )**




