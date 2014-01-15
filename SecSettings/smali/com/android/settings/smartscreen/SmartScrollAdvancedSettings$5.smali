.class Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 369
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$300(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$400(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollType:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$500(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollSensitivity:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$600(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollUnit:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$700(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollAcceleration:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$800(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollVisualFeedbackIcon:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$900(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollWeb:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1000(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailList:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1100(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollEmailBody:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1200(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollReadersHub:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1300(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollChrome:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1400(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mSmartScrollGmailBody:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1500(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode0:Lcom/android/settings_ex/RadioPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1600(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings_ex/RadioPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings$5;->this$0:Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->mRadioScrollMode1:Lcom/android/settings_ex/RadioPreference;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;->access$1700(Lcom/android/settings_ex/smartscreen/SmartScrollAdvancedSettings;)Lcom/android/settings_ex/RadioPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    return-void
.end method
