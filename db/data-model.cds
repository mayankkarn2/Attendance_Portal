namespace attendance.portal;

using { cuid, managed } from '@sap/cds/common';


entity Region : cuid, managed {
  regionName : String(15);
  schools : Composition of many School on schools.region = $self;
}

entity School : cuid, managed {
  schoolName : String(30);
  region : Association to Region;
  grades : Composition of many Grade on grades.school = $self;
}

entity Grade : cuid, managed {
  gradeName : String enum {
    Elementary = 'E';
    Middle = 'M';
    High = 'H';
  };
  school : Association to School;
  students : Composition of many Student on students.grade = $self;
}

entity Student : cuid, managed {
  studentName : String(20);
  grade : Association to one Grade;
  totalSickLeaves : Integer default 5;
  totalCasualLeaves : Integer default 10;
  appliedSickLeaves : Integer default 0;
  appliedCasualLeaves : Integer default 0;
}