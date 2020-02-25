# Cvičení 3 - Řešiče v Matalbu

## Diferenciální rovnice druhého řádu
* ![m\ddot{x} + kx = 0](https://render.githubusercontent.com/render/math?math=m%5Cddot%7Bx%7D%20%2B%20kx%20%3D%200)
* co je to stav?
* jak pracovat s ODE vyšších řádů -> přepis na soustavu ODE1 => stavový prostor, stavový zápis lineárních systémů
* přepis: substituce, intuice

## Numerické řešení diferenciálních rovnic vyšších řádů
* řešte diferenciální rovnici z předchozí sekce Eulerovou metodou (ODE1), jaký musí být krok, aby byla stabilní?
* vyzkoušejte metodu RK (ODE4)
* vyzkoušejte funkci **ode45**

## Skákající míč 2D
* odraz od země a od stěny - převrácení směru rychlosti (ztráty při odrazu)
* problém - zero-crossing detection
* řešení v matlabu pomocí event funkce
