%Vehicles
vehicle(toyota, yaris, sedan, 26000, 2020).
vehicle(toyota, prado250, suv, 75200, 2023).
vehicle(toyota, gr86, sport, 30000, 2025).
vehicle(ford, bronco, suv, 29000, 2017).
vehicle(toyota, tundra, pickup, 40000, 2025).
vehicle(ford, maverick, pickup, 35000, 2012).
vehicle(ford, f-150, sport, 30000, 2019).
vehicle(ford, mustangGT, sedan, 30000, 2019).
vehicle(bmw, coupex2, suv, 40000, 2025).
vehicle(bmw, e30m3, pickup, 50000, 2022).
vehicle(bmw, m2, sport, 29000, 2018).
vehicle(ford, focusrs, sport, 32000, 2017).

%predicados para suma.

sum(Product, Total):- 
findall(Value, vehicle(_, _, Product, Value, _), Values), 
sum_list(Values, Total).


%part 2

meet_budget(Reference, BudgetMax):-
    vehicle(_, Reference, _, Price, _),
    Price =< BudgetMax.

    vehicles_by_brand(Brand, Refs) :-
    findall(Ref, vehicle(Brand, Ref, _, _, _), Refs).

vehicles_grouped_by_brand(Brand,Grouped):-
    bagof((Type,Refs), bagof(Ref,Price,Year^(vehicle(Brand,Ref,Type,Price,Year)),Refs),Grouped).

    limit(L):-
    write('Enter the limit for the total inventory, or enter 0 if you do not need one, finish with a dot: '), read(X), ( X=:=0 -> L= none; L= X).

generate_report(Tipe, Budget, Lista, Total):-
    limit(L),
    findall([Brand, Name, Tipe, Value, Year], (vehicle(Brand, Name, Tipe, Value, Year), Value<Budget), Lista), sum(Tipe, Total), ( L == none -> true ; Total =< L ).

 %Test_cases.

test_case1(Refs) :-
    findall(Ref, (vehicle(toyota, Ref, suv, Price, _), Price < 30000), Refs).


test_case2(Grouped) :-
    bagof((Type, Year, Ref), vehicle(ford, Ref, Type, _, Year), Grouped).


test_case3(sedan, 500000):- 
    generate_report(sedan, 500000, Lista, Total).



