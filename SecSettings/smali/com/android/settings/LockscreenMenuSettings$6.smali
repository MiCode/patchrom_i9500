.class Lcom/android/settings_ex/LockscreenMenuSettings$6;
.super Ljava/lang/Object;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LockscreenMenuSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    iput-object p2, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .parameter "dialog"

    .prologue
    const/4 v6, 0x1

    .line 1146
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->val$layout:Landroid/view/View;

    const v5, 0x7f0b010a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 1147
    .local v1, check:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1148
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "safetyzone_settings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1149
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1150
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DoNotShowDialogOn"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1151
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1154
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, safety_zone_list:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1156
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    #calls: Lcom/android/settings_ex/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V
    invoke-static {v4}, Lcom/android/settings_ex/LockscreenMenuSettings;->access$200(Lcom/android/settings_ex/LockscreenMenuSettings;)V

    .line 1160
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/LockscreenMenuSettings$6;->this$0:Lcom/android/settings_ex/LockscreenMenuSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "safety_zone_enable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
