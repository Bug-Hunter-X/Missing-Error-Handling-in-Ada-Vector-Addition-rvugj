```ada
function Add_Vectors(A, B : Vector) return Vector is
   Result : Vector(A'Range); 
begin
   for I in A'Range loop
      Result(I) := A(I) + B(I); 
   end loop;
   return Result;
end Add_Vectors;

procedure Test_Add_Vectors is
   V1 : Vector := (1, 2, 3);
   V2 : Vector := (4, 5, 6);
   V3 : Vector;
begin
   V3 := Add_Vectors(V1, V2); 
   --Error handling missing.  What if V1 and V2 are not the same size?
   Ada.Text_IO.Put_Line("Resultant Vector:");
   for I in V3'Range loop
      Ada.Text_IO.Put(V3(I)'Img);  
      Ada.Text_IO.Put(" ");
   end loop;
end Test_Add_Vectors;

type Vector is array (1..3) of Integer;
```