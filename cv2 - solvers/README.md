# Cvičení 2 - Fixed step řešiče ODE

## ODE2 - Trapezoid
* ![x_{k+1} = x_k + \frac{h}{2}\left(  \dot{x}_{k} + \hat{\dot{x}}_{k+1}   \right)](https://render.githubusercontent.com/render/math?math=x_%7Bk%2B1%7D%20%3D%20x_k%20%2B%20%5Cfrac%7Bh%7D%7B2%7D%5Cleft(%20%20%5Cdot%7Bx%7D_%7Bk%7D%20%2B%20%5Chat%7B%5Cdot%7Bx%7D%7D_%7Bk%2B1%7D%20%20%20%5Cright))
* metody vyššího řádu - lichoběžníková metoda, graficky
* řešte TASK03 řešičem duhého řádu - lichoběžníkovou metodou
* porovnejte přesnost s mětodou Euler - ODE1

## ODE4 - Runge-Kutta
* [vzorec](https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods), graficky
* řeště TASK03 řešičem čtvrtého řádu - metodou Runge-Kutta
* porovnejte přesnost s předchozími metodami


## Diferenciální rovnice druhého řádu
* ![m\ddot{x} + kx = 0](https://render.githubusercontent.com/render/math?math=m%5Cddot%7Bx%7D%20%2B%20kx%20%3D%200)
* co je to stav?
* jak pracovat s ODE vyšších řádů -> přepis na soustavu ODE1 => stavový prostor, stavový zápis lineárních systémů
* přepis: substituce, intuice

## Numerické řešení diferenciálních rovnic vyšších řádů
* řešte diferenciální rovnici z předchozí sekce Eulerovou metodou (ODE1), jaký musí být krok, aby byla stabilní?
* vyzkoušejte metodu RK (ODE4)
* vyzkoušejte funkci **ode45**
