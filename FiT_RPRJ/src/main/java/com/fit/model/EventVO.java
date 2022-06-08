package com.fit.model;

import java.sql.Date;

public class EventVO {

	//占쌜쇽옙占쏙옙(占쏙옙占쏙옙占쏙옙)
	private String aId;
	
	private String aName;
	
	//占쏙옙膀濱占� 占쏙옙 占쌘듸옙占쏙옙 占쏙옙호
	private String eTitle;
	
	//占쏙옙肪聘占쏙옙占�
	private String eContent;
	
	private Date eReg;
	
	private int eBno;
	
	private int eHit;
	
	private int eFile;

	public String getaId() {
		return aId;
	}

	public void setaId(String aId) {
		this.aId = aId;
	}

	public String getaName() {
		return aName;
	}

	public void setaName(String aName) {
		this.aName = aName;
	}

	public String geteTitle() {
		return eTitle;
	}

	public void seteTitle(String eTitle) {
		this.eTitle = eTitle;
	}

	public String geteContent() {
		return eContent;
	}

	public void seteContent(String eContent) {
		this.eContent = eContent;
	}

	public Date geteReg() {
		return eReg;
	}

	public void seteReg(Date eReg) {
		this.eReg = eReg;
	}

	public int geteBno() {
		return eBno;
	}

	public void seteBno(int eBno) {
		this.eBno = eBno;
	}

	public int geteHit() {
		return eHit;
	}

	public void seteHit(int eHit) {
		this.eHit = eHit;
	}

	public int geteFile() {
		return eFile;
	}

	public void seteFile(int eFile) {
		this.eFile = eFile;
	}

	@Override
	public String toString() {
		return "EventVO [aId=" + aId + ", aName=" + aName + ", eTitle=" + eTitle + ", eContent=" + eContent + ", eReg="
				+ eReg + ", eBno=" + eBno + ", eHit=" + eHit + ", eFile=" + eFile + "]";
	}

	
}
	