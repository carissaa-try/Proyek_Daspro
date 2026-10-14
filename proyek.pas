program ProgramPengelolaanNilaiMahasiswa;
uses crt;

var
  jumlahMahasiswa, i: integer;
  nim, nama, status: string;
  nilaiTugas, nilaiUTS, nilaiUAS, nilaiAkhir: real;
  grade: char;

begin
  clrscr;
  writeln('==================================================');
  writeln('       PROGRAM PENGELOLAAN NILAI MAHASISWA        ');
  writeln('==================================================');
  writeln;

  { Input Jumlah Mahasiswa (REPETITION) }
  write('Masukkan Jumlah Mahasiswa: ');
  readln(jumlahMahasiswa);
  writeln('--------------------------------------------------');

  { Perulangan untuk Menginput Data Mahasiswa }
  for i := 1 to jumlahMahasiswa do
  begin
    writeln('Data Mahasiswa ke-', i);
    write('NIM           : '); readln(nim);
    write('Nama Mahasiswa: '); readln(nama);
    write('Nilai Tugas   : '); readln(nilaiTugas);
    write('Nilai UTS     : '); readln(nilaiUTS);
    write('Nilai UAS     : '); readln(nilaiUAS);

    { Proses Penghitungan Nilai Akhir }
    nilaiAkhir := (0.30 * nilaiTugas) + (0.30 * nilaiUTS) + (0.40 * nilaiUAS);

    { Seleksi Grade (SELECTION) }
    if (nilaiAkhir >= 85) then
      grade := 'A'
    else if (nilaiAkhir >= 70) then
      grade := 'B'
    else if (nilaiAkhir >= 55) then
      grade := 'C'
    else if (nilaiAkhir >= 40) then
      grade := 'D'
    else
      grade := 'E';

    { Seleksi Status Kelulusan (SELECTION) }
    case grade of
      'A', 'B', 'C': status := 'LULUS';
      'D', 'E':      status := 'TIDAK LULUS';
    end;

    { Menampilkan hasil sementara per mahasiswa }
    writeln('-> Nilai Akhir : ', nilaiAkhir:0:2, ' | Grade: ', grade, ' | Status: ', status);
    writeln('--------------------------------------------------');
  end;

  writeln('Program selesai. Tekan Enter untuk keluar...');
  readln;
end.