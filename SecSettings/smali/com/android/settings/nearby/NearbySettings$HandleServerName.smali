.class Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleServerName"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;Lcom/android/settings_ex/nearby/NearbySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1781
    invoke-direct {p0, p1}, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/settings_ex/nearby/NearbySettings;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 1784
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1804
    .end local p2
    :cond_0
    :goto_0
    return v2

    .line 1788
    .restart local p2
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #calls: Lcom/android/settings_ex/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, p2}, Lcom/android/settings_ex/nearby/NearbySettings;->access$2400(Lcom/android/settings_ex/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, deviceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/settings_ex/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 1791
    const-string v3, "*#@&*#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1792
    const-string v3, "AllshareSetting: "

    const-string v4, "HandleSetUploadPath"

    const-string v5, "ACCESS_CONTROL: allow all"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v3, v4}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    .line 1804
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1795
    :cond_2
    const-string v3, "AllshareSetting: "

    const-string v4, "HandleSetUploadPath"

    const-string v5, "ACCESS_CONTROL: only allowed device"

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    iget-object v3, p0, Lcom/android/settings_ex/nearby/NearbySettings$HandleServerName;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v3

    const-string v4, "1"

    invoke-interface {v3, v4}, Lcom/android/settings_ex/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1799
    .end local v0           #deviceName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1800
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "AllshareSetting: "

    const-string v4, "HandleSetUploadPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
