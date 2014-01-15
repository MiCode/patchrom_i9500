.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;
.super Landroid/os/Handler;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 807
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 815
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 816
    return-void

    .line 809
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 812
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
