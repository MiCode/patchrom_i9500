.class public Lcom/kikin/selection/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kikin/selection/Selection$Mode;
    }
.end annotation


# instance fields
.field private mAlt:Ljava/lang/String;

.field private mH1:Ljava/lang/String;

.field private mH2:Ljava/lang/String;

.field private mHl:Ljava/lang/String;

.field private mHref:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mMode:Lcom/kikin/selection/Selection$Mode;

.field private mPosthl:Ljava/lang/String;

.field private mPrehl:Ljava/lang/String;

.field private mSelectionLanguage:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTouchedWord:Ljava/lang/String;

.field private mType:Lcom/kikin/selection/SelectionType;

.field private mUrl:Landroid/net/Uri;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 46
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 52
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 58
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "selection"

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 46
    sget-object v3, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 52
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 53
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 54
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 56
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 57
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 58
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 59
    iput-object v4, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 66
    const-string v3, "mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, selectionMode:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 68
    sget-object v3, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 77
    :goto_0
    const-string v3, "content"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 78
    const-string v3, "selection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 79
    const-string v3, "textBeforeSelection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 80
    const-string v3, "textAfterSelection"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 82
    const-string v3, "selectionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, selectionType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 84
    sget-object v3, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 93
    :goto_1
    const-string v3, "selectionLanguage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 94
    const-string v3, "touchedWord"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 96
    const-string v3, "keywords"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 97
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 98
    const-string v3, "h1"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 99
    const-string v3, "h2"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 100
    const-string v3, "tag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 101
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 102
    const-string v3, "alt"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 103
    const-string v3, "href"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 104
    const-string v3, "value"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 105
    return-void

    .line 71
    .end local v2           #selectionType:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/kikin/selection/Selection$Mode;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/kikin/selection/Selection$Mode;->getMode(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    goto/16 :goto_0

    .line 87
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #selectionType:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/kikin/selection/SelectionType;->valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    invoke-static {v2}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v3

    iput-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 46
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 52
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 58
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 113
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 114
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "selection"
    .parameter "textBeforeSelection"
    .parameter "textAfterSelection"
    .parameter "selectionType"
    .parameter "selectionLanguage"
    .parameter "touchedWord"
    .parameter "keywords"
    .parameter "title"
    .parameter "h1TagText"
    .parameter "h2TagText"
    .parameter "tagName"
    .parameter "alt"
    .parameter "href"
    .parameter "value"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 46
    sget-object v1, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 128
    invoke-static {p5}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 129
    iput-object p6, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 133
    if-eqz p8, :cond_0

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .end local p8
    :goto_0
    iput-object p8, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 134
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .end local p9
    :goto_1
    iput-object p9, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 135
    if-eqz p10, :cond_2

    invoke-virtual {p10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .end local p10
    :goto_2
    iput-object p10, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 136
    if-eqz p11, :cond_3

    invoke-virtual {p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .end local p11
    :goto_3
    iput-object p11, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 137
    if-eqz p12, :cond_4

    invoke-virtual {p12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .end local p12
    :goto_4
    iput-object p12, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 138
    if-eqz p13, :cond_5

    invoke-virtual {p13}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .end local p13
    :goto_5
    iput-object p13, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    .line 139
    if-eqz p14, :cond_6

    invoke-virtual/range {p14 .. p14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .end local p14
    :goto_6
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    .line 140
    return-void

    .line 133
    .restart local p8
    .restart local p9
    .restart local p10
    .restart local p11
    .restart local p12
    .restart local p13
    .restart local p14
    :cond_0
    const/4 p8, 0x0

    goto :goto_0

    .line 134
    .end local p8
    :cond_1
    const/4 p9, 0x0

    goto :goto_1

    .line 135
    .end local p9
    :cond_2
    const/4 p10, 0x0

    goto :goto_2

    .line 136
    .end local p10
    :cond_3
    const/4 p11, 0x0

    goto :goto_3

    .line 137
    .end local p11
    :cond_4
    const/4 p12, 0x0

    goto :goto_4

    .line 138
    .end local p12
    :cond_5
    const/4 p13, 0x0

    goto :goto_5

    .line 139
    .end local p13
    :cond_6
    const/16 p14, 0x0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 309
    instance-of v2, p1, Lcom/kikin/selection/Selection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 310
    check-cast v0, Lcom/kikin/selection/Selection;

    .line 311
    .local v0, selection:Lcom/kikin/selection/Selection;
    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getHl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0}, Lcom/kikin/selection/Selection;->getType()Lcom/kikin/selection/SelectionType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 315
    .end local v0           #selection:Lcom/kikin/selection/Selection;
    :cond_0
    return v1
.end method

.method public getH1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    return-object v0
.end method

.method public getH2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/kikin/selection/Selection$Mode;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method

.method public getPosthl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrehl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setH1(Ljava/lang/String;)V
    .locals 1
    .parameter "h1"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    .line 226
    return-void

    .line 225
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setH2(Ljava/lang/String;)V
    .locals 1
    .parameter "h2"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    .line 234
    return-void

    .line 233
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setHl(Ljava/lang/String;)V
    .locals 0
    .parameter "hl"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1
    .parameter "keywords"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    .line 250
    return-void

    .line 249
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setMode(Lcom/kikin/selection/Selection$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    .line 190
    return-void
.end method

.method public setPosthl(Ljava/lang/String;)V
    .locals 0
    .parameter "posthl"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setPrehl(Ljava/lang/String;)V
    .locals 0
    .parameter "prehl"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setSelectionLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setSelectionType(Lcom/kikin/selection/SelectionType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 202
    return-void
.end method

.method public setSelectionType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 205
    invoke-static {p1}, Lcom/kikin/selection/SelectionType;->getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    .line 206
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    .line 274
    return-void

    .line 273
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 289
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    .line 290
    return-void

    .line 289
    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setTouchedWord(Ljava/lang/String;)V
    .locals 0
    .parameter "touchedWord"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setUrl(Landroid/net/Uri;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    .line 298
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "mode"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "content"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "selection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v1, "textBeforeSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "textAfterSelection"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "selectionType"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "selectionLanguage"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "touchedWord"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "keywords"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "title"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "h1"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "h2"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "tag"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "url"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    const-string v1, "alt"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "href"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "value"

    iget-object v2, p0, Lcom/kikin/selection/Selection;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v1, ret:Lorg/json/JSONObject;
    const-string v2, "mode"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v0, data:Lorg/json/JSONObject;
    const-string v2, "text"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v2, "hl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    const-string v2, "prehl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string v2, "posthl"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string v2, "tw"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v2, "h1"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v2, "h2"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v2, "tag"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "title"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    const-string v2, "keywords"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    const-string v2, "alt"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v2, "href"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v2, "ul"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v2, "type"

    iget-object v3, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v1, "\nSelection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v1, "\nPre text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPrehl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v1, "\nPost text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mPosthl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v1, "\nType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mType:Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\nLanguage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mSelectionLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "\nTouched word:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTouchedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "\nKeywords:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "\nTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, "\nH1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, "\nH2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mH2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "\nTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "\nAlt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mAlt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "\nHref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mHref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "\nMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mMode:Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, "\nUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v1, p0, Lcom/kikin/selection/Selection;->mUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
