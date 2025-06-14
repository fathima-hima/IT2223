
gpas=zeros(1,5);
marks =zeros(1,5);
for i = 1:5
marks(i)=input(["Enter marks for subject : "]);

    if marks(i)>=90 && marks(i)<100 
        disp("grade A");
        gpas(i)=4.0;

    elseif marks(i)>=80
        disp("Grade B");
        gpas(i)=3.0;

    elseif marks(i)>=70
        disp("Grade C");
        gpas(i)=2.0;

    elseif marks(i)>=60
        disp("Grade D");
        gpas(i)=1.0;
        
    else
        disp("F")
        gpas(i)=0.0;
    end
end

GPA=mean(gpas);
fprintf("\nYour GPA is : %.2f\n",GPA);