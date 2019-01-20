program pacman;
uses wincrt,graph,sysutils;
var grafika,grafikamod,x,i,j,y,z,zs,a,k,l,mov:integer;
	p:pointer;
	ch:char;
	pont:boolean;
begin
	grafika:=detect;
	initgraph(grafika,grafikamod,'');
	//1024x768
	randomize;
	SetBKcolor(0);
	SetColor(red);
	SetTextStyle(triplexFont, horizdir, 10);
	Outtextxy(310,10,'Extasy gyujto');
	SetTextStyle(DefaultFont, horizdir, 4);
	Outtextxy(512,300,'Start');
	outtextxy(512,400,'EXIT!');
	repeat
		ch:=ReadKey;
		
			
			if ch=#80 then begin
						setcolor(red);
						Circle(500,410,8);
						setfillstyle(solidfill,red);
						floodfill(501,410,red);
						Setcolor(0);
						circle(500,310,8);
					   setfillstyle(solidfill,0);
					   floodfill(501,310,0);
					   x:=1;
						end;
			if ch=#72 then begin
					   setcolor(red);
					   circle(500,310,8);
					   setfillstyle(solidfill,red);
					   floodfill(501,310,red);
					   Setcolor(0);
					   Circle(500,410,8);
					   setfillstyle(solidfill,0);
						floodfill(501,410,0);
					   x:=2;
					   end;
	
	until ch=#13;
	if x=1 then halt(1);
	cleardevice;
	setcolor(brown);
	circle(50,50,40);
	setfillstyle(SolidFill,yellow);
	floodfill(50,20,brown);
	setcolor(black);
	circle(40,53,5);
	circle(60,53,5);
	setfillstyle(SolidFill,black);
	floodfill(40,53,black);
	floodfill(60,53,black);
	setcolor(red);
	arc(50,50,210,330,30);
	z:=0;
	a:=0;
	zs:=0;
	getmem(p,imagesize(0,0,100,100));
	getimage(0,0,100,100,p^);
	
	for i:=1 to 3 do begin
			
			moveto(1000,780);
			Outtext('Pontok:    ');
			mov:=getx+(i*60);
			moveto(mov,780);
			Outtext(inttostr(a));
			moveto(random(910),random(650));
			for j:=1 to 25 do Circle(getx,gety,j);
			x:=getx;
			y:=gety;
			repeat
				ch := readkey;
				if ch=#0 then begin
                ch:=readKey;
                 case ch of
                  #72: if z-10>=0 then z:=z-10; {fel}
                  #80: if z+10<=768 then z:=z+10; {le}
                  #75: if zs-10>=0 then zs:=zs-10; {balra}
                  #77: if zs+10<=1024 then zs:=zs+10; {jobbra}
                 end;
                putimage(zs,z,p^,copyput);
                settextstyle(defaultfont,horizdir,2);
			case a of 
			2:begin
			setcolor(random(15)+1);
			outtextxy(getmaxx-300,random(200),'A naaagypatikaabaaan');
			end;
			0:begin
			setcolor(random(15)+1);
			Outtextxy(getmaxx-300,random(200)+200,'Hoool vetteeeed?');
			
			end;
			1:begin
			setcolor(random(15)+1);
			outtextxy(getmaxx-350,random(200)+400,'Nem laaatoood mii ezz?');
			
			end;
			end;
                end;
                setcolor(red);
                SetTextStyle(DefaultFont, horizdir, 4);
                for k:=1 to 50 do begin
						for l:=1 to 50 do begin
						if (((x-25)+k)=zs+50) and (((y+25)-l)=z+50) then pont:=true;
						end;
					end;
				//if (round(zs div 100)=round(y div 100)) and (round(z div 100)=round(x div 100)) then pont:=true;
				until pont=true;
				pont:=false;
				
				a:=a+1;
				
		
	end;
	cleardevice;
	Setcolor(2);
	Settextstyle(DefaultFont, horizdir, 3);
	Outtextxy(300,getmaxy div 2,'Brafo zsepen tulatakoltad makad!!4negy44');
	repeat 
			ch:=readkey;
	until ch=#13;
	cleardevice;
	for k:=1 to 200 do begin
	setcolor(random(15)+1);
	moveto(getmaxx div 2, getmaxy div 3);
	circle(getx,gety,k);
	moveto(getmaxx div 2, (getmaxy div 3)*2);
	circle(getx,gety,k);
	if k mod 4 = 0 then
	Outtextxy(random(1024),random(768),'Szipuuuuuuuuaaa');
	end;
	readkey;
end.
