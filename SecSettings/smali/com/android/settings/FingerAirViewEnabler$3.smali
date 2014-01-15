.class Lcom/android/settings_ex/FingerAirViewEnabler$3;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewEnabler;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewEnabler;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #getter for: Lcom/android/settings_ex/FingerAirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$100(Lcom/android/settings_ex/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #getter for: Lcom/android/settings_ex/FingerAirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$100(Lcom/android/settings_ex/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #calls: Lcom/android/settings_ex/FingerAirViewEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$200(Lcom/android/settings_ex/FingerAirViewEnabler;)V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #getter for: Lcom/android/settings_ex/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$000(Lcom/android/settings_ex/FingerAirViewEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #getter for: Lcom/android/settings_ex/FingerAirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$100(Lcom/android/settings_ex/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #getter for: Lcom/android/settings_ex/FingerAirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$100(Lcom/android/settings_ex/FingerAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewEnabler$3;->this$0:Lcom/android/settings_ex/FingerAirViewEnabler;

    #calls: Lcom/android/settings_ex/FingerAirViewEnabler;->broadcastFingerAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/FingerAirViewEnabler;->access$300(Lcom/android/settings_ex/FingerAirViewEnabler;Z)V

    goto :goto_0
.end method
