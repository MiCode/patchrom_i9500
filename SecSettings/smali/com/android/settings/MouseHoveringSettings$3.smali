.class Lcom/android/settings_ex/MouseHoveringSettings$3;
.super Ljava/lang/Object;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MouseHoveringSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MouseHoveringSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MouseHoveringSettings;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

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

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$500(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #calls: Lcom/android/settings_ex/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/MouseHoveringSettings;->access$600(Lcom/android/settings_ex/MouseHoveringSettings;Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$000(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$100(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$200(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$300(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/MouseHoveringSettings$3;->this$0:Lcom/android/settings_ex/MouseHoveringSettings;

    #getter for: Lcom/android/settings_ex/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/MouseHoveringSettings;->access$400(Lcom/android/settings_ex/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 324
    return-void
.end method
