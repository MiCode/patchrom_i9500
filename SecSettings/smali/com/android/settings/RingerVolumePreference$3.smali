.class Lcom/android/settings_ex/RingerVolumePreference$3;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/settings_ex/RingerVolumePreference$3;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x3

    .line 503
    if-nez p2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const/4 v1, 0x1

    .line 507
    .local v1, musicSeekBarIdx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/android/settings_ex/RingerVolumePreference;->access$200()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 508
    invoke-static {}, Lcom/android/settings_ex/RingerVolumePreference;->access$300()[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, v4, :cond_3

    .line 509
    move v1, v0

    .line 513
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference$3;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v2}, Lcom/android/settings_ex/RingerVolumePreference;->access$400(Lcom/android/settings_ex/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 514
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 515
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference$3;->this$0:Lcom/android/settings_ex/RingerVolumePreference;

    #getter for: Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings_ex/RingerVolumePreference;->access$500(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    goto :goto_0

    .line 507
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
