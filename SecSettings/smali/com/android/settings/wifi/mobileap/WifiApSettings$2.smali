.class Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;->this$0:Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "networktype"

    .prologue
    .line 375
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 377
    return-void
.end method
