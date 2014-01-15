.class Lcom/android/settings_ex/motion2013/SMotionSettings$9;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/SMotionSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    iput-object p2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 316
    const-string v1, "air_motion"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$1100(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V
    invoke-static {v1, v3}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$700(Lcom/android/settings_ex/motion2013/SMotionSettings;Z)V

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 320
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090c49

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 331
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const-string v1, "motion"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$1200(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 324
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 325
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/MotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090bda

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 326
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    const-string v1, "surface"

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$1300(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "surface_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 329
    .restart local v0       #preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings_ex/motion2013/HandMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090c45

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method
