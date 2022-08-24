%Escala de grises
function [imagen1] = grayscale(imagen)
    imagen1 = imagen;
    [x1,y1,p1] = size(imagen1);
    for m=1:x1
        for n=1:y1
            x = (imagen1(m,n)*0.299 + imagen1(m,n)*0.587 + imagen1(m,n)*0.114);
            imagen1(m,n,1) = x;
            imagen1(m,n,2) = x;
            imagen1(m,n,3) = x;
        end
    end
end