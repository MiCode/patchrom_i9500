.class Lcom/android/settings_ex/wifi/WifiSettings$10;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings$10;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$10;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 1794
    .local v0, networkId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1795
    const-string v1, "WifiSettings"

    const-string v2, "Invalid network id "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :goto_0
    return-void

    .line 1797
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings$10;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings$10;->this$0:Lcom/android/settings_ex/wifi/WifiSettings;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->access$800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
