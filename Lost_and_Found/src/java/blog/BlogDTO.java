/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package blog;

/**
 *
 * @author Owner
 */
public class BlogDTO {
    private int blogID;
    private String blogName;
    private String blogContent;
    private int memberID;

    public BlogDTO(int blogID, String blogName, String blogContent, int memberID) {
        this.blogID = blogID;
        this.blogName = blogName;
        this.blogContent = blogContent;
        this.memberID = memberID;
    }

    public BlogDTO() {
        this.blogID = 0;
        this.blogName = "";
        this.blogContent = "";
        this.memberID = 0;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public String getBlogName() {
        return blogName;
    }

    public void setBlogName(String blogName) {
        this.blogName = blogName;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public int getMemberID() {
        return memberID;
    }

    public void setMemberID(int memberID) {
        this.memberID = memberID;
    }
    
    
    
    
    
}
