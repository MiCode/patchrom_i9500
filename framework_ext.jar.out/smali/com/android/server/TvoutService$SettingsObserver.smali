.class final Lcom/android/server/TvoutService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method public constructor <init>(Lcom/android/server/TvoutService;Landroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1035
    iput-object p1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    .line 1036
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1038
    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1039
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x1110044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    #setter for: Lcom/android/server/TvoutService;->mDreamsEnabledByDefaultConfig:Z
    invoke-static {p1, v2}, Lcom/android/server/TvoutService;->access$2002(Lcom/android/server/TvoutService;Z)Z

    .line 1042
    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1044
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v5, "screensaver_enabled"

    #getter for: Lcom/android/server/TvoutService;->mDreamsEnabledByDefaultConfig:Z
    invoke-static {p1}, Lcom/android/server/TvoutService;->access$2000(Lcom/android/server/TvoutService;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    const/4 v6, -0x2

    invoke-static {v0, v5, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    #setter for: Lcom/android/server/TvoutService;->mDreamsEnabledSetting:Z
    invoke-static {p1, v3}, Lcom/android/server/TvoutService;->access$2102(Lcom/android/server/TvoutService;Z)Z

    .line 1048
    return-void

    :cond_0
    move v2, v4

    .line 1044
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1052
    const-string v1, "TvoutService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingsObserver: onChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$1100(Lcom/android/server/TvoutService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    const-string v5, "screensaver_enabled"

    iget-object v1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mDreamsEnabledByDefaultConfig:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$2000(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    const/4 v6, -0x2

    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Lcom/android/server/TvoutService;->mDreamsEnabledSetting:Z
    invoke-static {v4, v1}, Lcom/android/server/TvoutService;->access$2102(Lcom/android/server/TvoutService;Z)Z

    .line 1060
    iget-object v1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mDreamsEnabledSetting:Z
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$2100(Lcom/android/server/TvoutService;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v1, v3}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 1064
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 1055
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 1063
    :cond_2
    iget-object v1, p0, Lcom/android/server/TvoutService$SettingsObserver;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v1, v2}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    goto :goto_2
.end method
