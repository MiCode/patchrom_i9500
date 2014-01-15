.class Lcom/android/settings_ex/PenSettingsMenu$3;
.super Ljava/lang/Object;
.source "PenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/PenSettingsMenu;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PenSettingsMenu;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings_ex/PenSettingsMenu$3;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

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

    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/PenSettingsMenu$3;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/PenHoveringEnabler;->removeEnabledScreenReaderValue(Landroid/content/Context;)V

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/PenSettingsMenu$3;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

    #getter for: Lcom/android/settings_ex/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/PenSettingsMenu;->access$000(Lcom/android/settings_ex/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/PenSettingsMenu$3;->this$0:Lcom/android/settings_ex/PenSettingsMenu;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    const-string v0, "PenSettingsMenu"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method
