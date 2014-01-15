.class Lcom/android/settings_ex/motion2013/AirMotionSettings$2;
.super Landroid/os/Handler;
.source "AirMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/motion2013/AirMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$2;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$2;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$100(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$2;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$200(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
