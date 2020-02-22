	─	━	│	┃	┄	┅	┆	┇	┈	┉	┊	┋	┌	┍	┎	┏
	┐	┑	┒	┓	└	┕	┖	┗	┘	┙	┚	┛	├	┝	┞	┟
	┠	┡	┢	┣	┤	┥	┦	┧	┨	┩	┪	┫	┬	┭	┮	┯
	┰	┱	┲	┳	┴	┵	┶	┷	┸	┹	┺	┻	┼	┽	┾	┿
	╀	╁	╂	╃	╄	╅	╆	╇	╈	╉	╊	╋	╌	╍	╎	╏
	═	║	╒	╓	╔	╕	╖	╗	╘	╙	╚	╛	╜	╝	╞	╟
	╠	╡	╢	╣	╤	╥	╦	╧	╨	╩	╪	╫	╬	╭	╮	╯
	╰	╱	╲	╳	╴	╵	╶	╷	╸	╹	╺	╻	╼	╽	╾	╿


    Rooms are initialized with 4 corners, 4 walls, and up to 4 objects inside. Lines are thin for unvisited. Lines become thick after visiting the room.

    Key:

    n = north wall    ne = northeast corner     E = enemy
    e = east wall     se = southeast corner     T = treasure
    s = south wall    sw = southwest corner     B = boss
    w = west wall     nw = northwest corner     P = puzzle

    Reference:
    Base:

    n =  ["─══─", "────", "─  ─", "━━━━", "━  ━"]   
    ne = %w(┐ ┓)                 
    e =  ["║", "│", " ", "┃"]
    se = %w(┘ ┛)                
    s =  ["─══─", "────", "─  ─", "━━━━", "━  ━"] 
    sw = %w(└ ┗)    
    w =  ["║", "│", " ", "┃"]     
    nw = %w(┌ ┏)

    Joiners(last 3 elements are for hallways): 
    
    nese = %w(┤ ┪ ┩ ┫ ┧ ┦ ┨)
    sesw = %w(┴	┹ ┺ ┻ ┵ ┶ ┷)
    swnw = %w(├ ┡ ┢ ┣ ┞ ┟ ┠)
    nwne = %w(┬ ┱ ┲ ┳ ┭ ┮ ┯)

    three_or_more = %w(┼ ╅ ╃ ╄ ╆ ╈ ╉ ╇ ╊ ╋)

    objects = 

    Pattern: nw+n+ne+"\n"+w+" "+" "+" "+" "+e+"\n"+sw+s+se

    Unvisited:          Visited:

    Base Room: puts nw[0]+n[2]+ne[0]+"\n"+w[2]+" "+" "+" "+" "+e[2]+"\n"+sw[0]+s[2]+se[0]
    ┌─  ─┐              ┏━  ━┓
                              
    └─  ─┘              ┗━  ━┛

    Closed Room:
    ┌────┐              ┏━━━━┓
    │    │              ┃    ┃                              
    └────┘              ┗━━━━┛

    Locked Door:
    ┌────┐              ┏━━━━┓
    │    │              ┃    ┃
    └─══─┘              ┗━══━┛

    Sample:
        ┌────┐
        │ TB │
        ├─══─┼────┐
        │ E    TP │
   ┌────┼─  ─┼────┘
   │ T  │    │
   ├─══─┼─  ─╆━━━━┳━━━━┱────┐
   │ E       ║ P    E    ET │
   └────┴────┺━━━━╋━  ━╉────┘
                  ┃    ┃
                  ┗┓  ┏┛