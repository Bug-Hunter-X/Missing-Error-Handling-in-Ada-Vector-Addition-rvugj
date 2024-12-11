```ada
function Add_Vectors(A, B : Vector) return Vector is
   Result : Vector(A'Range); 
begin
   if A'Length /= B'Length then
      raise Size_Mismatch;
   end if; 
   for I in A'Range loop
      Result(I) := A(I) + B(I);
   end loop;
   return Result;
exception
   when Size_Mismatch =>
      Ada.Text_IO.Put_Line("Error: Vectors must be of the same size.");
      return (others => 0); -- Return a zero vector in case of error
end Add_Vectors;

procedure Test_Add_Vectors is
   V1 : Vector := (1, 2, 3);
   V2 : Vector := (4, 5, 6);
   V3 : Vector;
   V4 : Vector := (1,2);
begin
   V3 := Add_Vectors(V1, V2); 
   Ada.Text_IO.Put_Line("Resultant Vector:");
   for I in V3'Range loop
      Ada.Text_IO.Put(V3(I)'Img);  
      Ada.Text_IO.Put(" ");
   end loop;
   Ada.Text_IO.New_Line;
   
   begin
      V3 := Add_Vectors(V1, V4); --Testing the exception
   exception
      when others =>
         Ada.Text_IO.Put_Line("Exception handled successfully");
   end;
   
end Test_Add_Vectors;

type Vector is array (1..3) of Integer;
Size_Mismatch : exception;
```