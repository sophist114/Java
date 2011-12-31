<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="title">&nbsp;&nbsp;申请课程</div>
<table width="100%">
		<form>
			<tr>
				<td align="right" width="40%">课程编号</td>
				<td><input type="text" name="courseName"></td>
			</tr>
			<tr>
				<td align="right" width="40%">申请原因</td>
				<td><textarea rows="3" cols="25" name="reason"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="submit" value="提交申请" id="button"/>
				</td>
           </tr>
		</form>
</table>