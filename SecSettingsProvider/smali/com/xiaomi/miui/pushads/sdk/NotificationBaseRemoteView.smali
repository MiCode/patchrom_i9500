.class Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;
.super Landroid/widget/RemoteViews;
.source "NotificationBaseRemoteView.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notification_base_layout"

    const-string v3, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public setActionButton(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "text"
    .parameter "pendingIntent"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_button"

    const-string v3, "id"

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, buttonLayoutId:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 60
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 63
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "srcId"

    .prologue
    .line 23
    const v0, 0x1020006

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setImageViewResource(II)V

    .line 24
    return-void
.end method

.method public setTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "subTitle"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 31
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    move-object p1, p2

    .line 36
    const-string p2, ""

    .line 40
    :cond_3
    const/4 v1, 0x0

    .line 41
    .local v1, titleLayoutId:I
    const/4 v0, 0x0

    .line 43
    .local v0, subTitleLayoutId:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 44
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sub_title"

    const-string v4, "id"

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setViewVisibility(II)V

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title"

    const-string v4, "id"

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 50
    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
