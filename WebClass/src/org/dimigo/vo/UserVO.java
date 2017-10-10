/**
 * 
 */
package org.dimigo.vo;

/**
 * <pre>
 * org.dimigo.vo
 *   |_ UserVO
 *
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 27.
 * </pre>
 *
 * @author 		: cdb23
 * @version		: 1.0
 */
public class UserVO {
	// 값을 전달해주기 위한 필드 생성하는 class임.
	private String id;
	private String name;
	private String nickname;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
}
