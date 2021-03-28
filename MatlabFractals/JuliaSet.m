% Julia Set

for ImageWidth = 1:640
for ImageHeight = 1:480
RealPart = (ImageWidth - 320) / 120;
ImaginaryPart = (ImageHeight - 240) / 120;
iteration=0;
c=complex(RealPart,ImaginaryPart);
%z=0+0i;
k=.327+.22i;
z=c;
for i = 1:90   
    z=z^1.7+k;
    if abs(z) > 2 ,break,end
    iteration=iteration+1;
    ComplexModulusImage(ImageHeight,ImageWidth)=abs(z);
end
IterationImage(ImageHeight,ImageWidth)=iteration;%the number of iteration
end
end
ComplexModulusImage=round(ComplexModulusImage);
 image(IterationImage)
 colormap(jet)