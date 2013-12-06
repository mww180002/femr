# --- !Ups

ALTER TABLE `patient_encounter_pmh_fields`
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_pmh_field_id_pmh_fields_id` ,
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_patient_encounter_id` ,
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_user_id_users_id` ;
ALTER TABLE `patient_encounter_pmh_fields`
CHANGE COLUMN `user_id` `user_id` INT(11) NOT NULL  ,
CHANGE COLUMN `patient_encounter_id` `patient_encounter_id` INT(11) NOT NULL  ,
CHANGE COLUMN `pmh_field_id` `pmh_field_id` INT(11) NOT NULL  ,
CHANGE COLUMN `pmh_field_value` `pmh_field_value` VARCHAR(255) NOT NULL  ,
CHANGE COLUMN `date_taken` `date_taken` DATETIME NOT NULL  ,
  ADD CONSTRAINT `fk_patient_encounter_pmh_fields_pmh_field_id_pmh_fields_id`
  FOREIGN KEY (`pmh_field_id` )
  REFERENCES `pmh_fields` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_patient_encounter_pmh_fields_patient_encounter_id`
  FOREIGN KEY (`patient_encounter_id` )
  REFERENCES `patient_encounters` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_patient_encounter_pmh_fields_user_id_users_id`
  FOREIGN KEY (`user_id` )
  REFERENCES `users` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

# --- !Downs

ALTER TABLE `patient_encounter_pmh_fields`
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_pmh_field_id_pmh_fields_id` ,
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_patient_encounter_id` ,
DROP FOREIGN KEY `fk_patient_encounter_pmh_fields_user_id_users_id` ;
ALTER TABLE `patient_encounter_pmh_fields`
CHANGE COLUMN `user_id` `user_id` INT(11) NULL  ,
CHANGE COLUMN `patient_encounter_id` `patient_encounter_id` INT(11) NULL  ,
CHANGE COLUMN `pmh_field_id` `pmh_field_id` INT(11) NULL  ,
CHANGE COLUMN `pmh_field_value` `pmh_field_value` VARCHAR(255) NULL  ,
CHANGE COLUMN `date_taken` `date_taken` DATETIME NULL  ,
ADD CONSTRAINT `fk_patient_encounter_pmh_fields_pmh_field_id_pmh_fields_id`
FOREIGN KEY (`pmh_field_id` )
REFERENCES `pmh_fields` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_patient_encounter_pmh_fields_patient_encounter_id`
FOREIGN KEY (`patient_encounter_id` )
REFERENCES `patient_encounters` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_patient_encounter_pmh_fields_user_id_users_id`
FOREIGN KEY (`user_id` )
REFERENCES `users` (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;