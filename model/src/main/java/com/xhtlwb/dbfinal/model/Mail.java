package com.xhtlwb.dbfinal.model;

/**
 * @author Xueht
 */
public class Mail extends Entity{
    private String title;
    private String content;
    private Integer sendId;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getSendId() {
        return sendId;
    }

    public void setSendId(Integer sendId) {
        this.sendId = sendId;
    }
}
