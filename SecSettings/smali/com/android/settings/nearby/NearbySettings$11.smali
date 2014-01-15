.class Lcom/android/settings_ex/nearby/NearbySettings$11;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nearby/NearbySettings;->requestRestartServerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nearby/NearbySettings;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/settings_ex/nearby/NearbySettings$11;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 924
    const-string v1, "AllshareSetting: "

    const-string v2, "requestRestartServerPopup"

    const-string v3, "BUTTON - Positive: reannounceDMS"

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$11;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 928
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/nearby/NearbySettings$11;->this$0:Lcom/android/settings_ex/nearby/NearbySettings;

    #getter for: Lcom/android/settings_ex/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings_ex/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/settings_ex/nearby/NearbySettings;->access$000(Lcom/android/settings_ex/nearby/NearbySettings;)Lcom/android/settings_ex/nearby/IMediaServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
