package com.likeanddislike.vote;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;

@Named(value = "voteBean")
@SessionScoped
public class VoteBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private int likeCount = 0;
    private int dislikeCount = 0;

    public void incrementLike() {
        likeCount++;
    }

    public void incrementDislike() {
        dislikeCount++;
    }

    public int getLikeCount() {
        return likeCount;
    }

    public int getDislikeCount() {
        return dislikeCount;
    }
}
