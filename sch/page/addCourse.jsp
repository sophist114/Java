<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="title">&nbsp;&nbsp;增加课程</div>
<table width="100%">
		<form action="addCourseAction.action" method="post">
			<tr>
				<td align="right" width="40%">课程名</td>
				<td><input type="text" name="courseName"></td>
			</tr>
			<tr>
				<td align="right" width="40%">课程描述</td>
				<td><textarea name="courseDetail" cols="30" rows="4"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
						<input type="submit" value="提交" id="button"/>
				</td>
           </tr>
		</form>
</table>