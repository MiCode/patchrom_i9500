.class Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$7;
.super Ljava/lang/Object;
.source "SafetyZoneSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->showSafetyZoneEnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$7;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

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

    .line 590
    const-string v1, "SafetyZoneSettings"

    const-string v2, "showSafetyZoneEnableDialog(), ok is clicked. start wifi network picker"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$7;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    invoke-virtual {v1, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 593
    iget-object v1, p0, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings$7;->this$0:Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;

    #calls: Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;->access$800(Lcom/android/settings_ex/safetyzone/SafetyZoneSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "safety_zone_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 594
    return-void
.end method
