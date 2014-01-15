.class Lcom/android/settings_ex/FeatureSettings$1;
.super Landroid/os/Handler;
.source "FeatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/FeatureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$000(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$100(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$200(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$300(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 104
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/FeatureSettings$1;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FeatureSettings;->access$400(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
