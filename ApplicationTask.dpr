// Application task for moebel.de from Mirko Grzybowski
program ApplicationTask;

{$APPTYPE CONSOLE}
{$R+,Q+,X-}

uses
  System.SysUtils,
  System.Math;

var
  zahl: byte;
  fizz, buzz, fizzbuzz: boolean;

const
  UPPER_BORDER: byte = 255;

begin
  for zahl := 1 to UPPER_BORDER do
  begin
    // Calculation Fizz
    fizz := zahl mod 3 = 0;
    // Calculation Buzz
    buzz := zahl mod 5 = 0;
    // Calculation FizzBuzz
    fizzbuzz := fizz and buzz;

    // Output
    if not fizz and not buzz then
      write(zahl);
    if fizz and not fizzbuzz then
      write('Fizz');
    if buzz and not fizzbuzz then
      write('Buzz');
    if fizzbuzz then
      write('FizzBuzz');
      writeln;
  end;
  readln;
end.
