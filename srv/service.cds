using attendance.portal as portal from '../db/data-model';

service Portal @(path: 'portal'){
  entity Region as projection on portal.Region;
  entity School as projection on portal.School;
  entity Grade as projection on portal.Grade;
  entity Student as projection on portal.Student;
  action addRegion (payload: String) returns Boolean;
}