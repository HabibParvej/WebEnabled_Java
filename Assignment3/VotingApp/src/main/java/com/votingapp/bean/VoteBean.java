package com.votingapp.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;

@ManagedBean(name = "voteBean")
@SessionScoped
public class VoteBean implements Serializable {

    private static final long serialVersionUID = 1L;
    
    private int likeCount = 0;
    private int dislikeCount = 0;

    public int getLikeCount() {
        return likeCount;
    }

    public int getDislikeCount() {
        return dislikeCount;
    }

    public void incrementLike() {
        likeCount++;
    }

    public void incrementDislike() {
        dislikeCount++;
    }
}
