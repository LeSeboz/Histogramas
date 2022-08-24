imagen = imread("pastel.jpg");
imagen = grayscale(imagen);


[x,y]= size(imagen);
pixmax = 256; 
tam = zeros(pixmax);

%Histograma simple
for i=1:x
    for j=1:y
        xy=imagen(i,j);
        for val=1:pixmax
            if xy==val
                tam(val)= tam(val)+1;
            end
        end
    end
end

figure(1);
subplot(2,1,1);
imshow(imagen);

subplot(2,1,2);
plot(tam);

%Histograma equalizado
VI = 1:256;
Vo = 0;

for ru = 1:256
    h(ru) = Vo + tam(ru);
    Vo = h(ru);
end

figure(2);
subplot(2,1,1);
imshow(imagen);

subplot(2,1,2);
plot(h);

%Histograma lineal
vi = 1:256;
for rx=1:x
    for cy=1:y
        eq=imagen(rx,cy);
        for val=1:256
            if(eq==val)
                vi(val) = tam(eq+1)*(255/(x*y));
            end
        end
    end
end

figure(3);
subplot(2,1,1);
imshow(imagen);

subplot(2,1,2);
plot(vi);