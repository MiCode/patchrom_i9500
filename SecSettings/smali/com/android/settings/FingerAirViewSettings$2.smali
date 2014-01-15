.class Lcom/android/settings_ex/FingerAirViewSettings$2;
.super Ljava/lang/Object;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewSettings;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewSettings$2;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/FingerAirViewSettings$2;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 359
    .local v0, fingerAirViewState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/FingerAirViewSettings$2;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings_ex/FingerAirViewSettings;->access$000(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 360
    return-void
.end method
