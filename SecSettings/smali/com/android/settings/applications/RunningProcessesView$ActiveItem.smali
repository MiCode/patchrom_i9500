.class public Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 10
    .parameter "context"
    .parameter "builder"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, uptimeView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 126
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 127
    iput-boolean v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 128
    iget-wide v6, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_6

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {p2, v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iget-object v1, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 108
    .local v1, size:Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iput-object v1, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iget-boolean v3, v3, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_5

    .line 115
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v3, :cond_0

    .line 116
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 117
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    .end local v1           #size:Ljava/lang/String;
    :cond_4
    const-string v1, ""

    goto :goto_2

    .line 119
    .restart local v1       #size:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v3, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    goto :goto_0

    .line 134
    .end local v1           #size:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 135
    .local v0, isService:Z
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    instance-of v3, v3, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v3, :cond_7

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    check-cast v3, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    move v0, v4

    .line 138
    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    move v0, v5

    .line 136
    goto :goto_3

    .line 142
    :cond_9
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
