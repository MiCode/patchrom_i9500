.class Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;
.super Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;
.source "NotificationBigRemoteView.java"


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

    const-string v2, "notification_big_picture_layout"

    const-string v3, "layout"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public setBigPicture(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 21
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "big_picture"

    const-string v3, "id"

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, pictureLayoutId:I
    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 25
    return-void
.end method
