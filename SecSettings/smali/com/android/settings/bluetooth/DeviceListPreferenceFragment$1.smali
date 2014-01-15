.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onMotionScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Shake Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->access$000(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->startScanning()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
