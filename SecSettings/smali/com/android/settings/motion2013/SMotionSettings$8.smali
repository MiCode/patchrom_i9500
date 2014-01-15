.class Lcom/android/settings_ex/motion2013/SMotionSettings$8;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$8;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$8;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #getter for: Lcom/android/settings_ex/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$000(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$8;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$1000(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 301
    return-void
.end method
