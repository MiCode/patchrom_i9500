.class Lcom/android/settings_ex/TetherSettings$5;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$300(Lcom/android/settings_ex/TetherSettings;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$500(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$500(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$500(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 473
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    const/4 v1, -0x1

    #setter for: Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/TetherSettings;->access$302(Lcom/android/settings_ex/TetherSettings;I)I

    .line 474
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$400(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$5;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/TetherSettings;->access$100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
