package kr.co.mlec.file.vo;

import java.io.File;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/file")
@Controller
public class FileUploadVO {

	private int no;
	private int cNo;
	private int pNo;
	private String fOriName;
	private String fSaveName;
	private	int fSize;
	private String type;
	private String main;
	public FileUploadVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FileUploadVO(int no, int cNo, int pNo, String fOriName, String fSaveName, int fSize, String type,
			String main) {
		super();
		this.no = no;
		this.cNo = cNo;
		this.pNo = pNo;
		this.fOriName = fOriName;
		this.fSaveName = fSaveName;
		this.fSize = fSize;
		this.type = type;
		this.main = main;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getfOriName() {
		return fOriName;
	}
	public void setfOriName(String fOriName) {
		this.fOriName = fOriName;
	}
	public String getfSaveName() {
		return fSaveName;
	}
	public void setfSaveName(String fSaveName) {
		this.fSaveName = fSaveName;
	}
	public int getfSize() {
		return fSize;
	}
	public void setfSize(long l) {
		this.fSize = (int) l;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	@Override
	public String toString() {
		return "FileUploadVO [no=" + no + ", cNo=" + cNo + ", pNo=" + pNo + ", fOriName=" + fOriName + ", fSaveName="
				+ fSaveName + ", fSize=" + fSize + ", type=" + type + ", main=" + main + "]";
	}

	
	
}

