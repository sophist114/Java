// Decompiled by Jad v1.5.8e2. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://kpdus.tripod.com/jad.html
// Decompiler options: packimports(3) fieldsfirst ansi space 
// Source File Name:   FileUploadAction.java

package cn.itcast.action;

import com.opensymphony.xwork2.ActionContext;
import java.io.File;
import java.io.PrintStream;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

public class FileUploadAction
{

	private File image[];
	private String imageFileName[];

	public FileUploadAction()
	{
	}

	public File[] getImage()
	{
		return image;
	}

	public void setImage(File image[])
	{
		this.image = image;
	}

	public String[] getImageFileName()
	{
		return imageFileName;
	}

	public void setImageFileName(String imageFileName[])
	{
		this.imageFileName = imageFileName;
	}

	public String addUI()
	{
		return "success";
	}

	public String execute()
		throws Exception
	{
		String realpath = ServletActionContext.getServletContext().getRealPath("/images");
		System.out.println(realpath);
		if (image != null)
		{
			File savedir = new File(realpath);
			if (!savedir.exists())
				savedir.mkdirs();
			for (int i = 0; i < image.length; i++)
			{
				File savefile = new File(savedir, imageFileName[i]);
				FileUtils.copyFile(image[i], savefile);
			}

			ActionContext.getContext().put("message", "上传成功");
		}
		return "success";
	}
}
