ALTER TABLE product ADD CONSTRAINT fk_pID 
    FOREIGN KEY(aId) REFERENCES Admin(aId);

ALTER TABLE notice ADD CONSTRAINT fk_eid
    FOREIGN KEY(aId) REFERENCES Admin(aId);
    
    ALTER TABLE event ADD CONSTRAINT fk_qaid
    FOREIGN KEY(aId) REFERENCES Admin(aId);
    
      ALTER TABLE event ADD CONSTRAINT fk_qaid
    FOREIGN KEY(aId) REFERENCES Admin(aId);
    
    commit;