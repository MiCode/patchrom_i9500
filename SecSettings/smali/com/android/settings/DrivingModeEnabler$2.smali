.class Lcom/android/settings_ex/DrivingModeEnabler$2;
.super Ljava/lang/Object;
.source "DrivingModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DrivingModeEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DrivingModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DrivingModeEnabler;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    #getter for: Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DrivingModeEnabler;->access$000(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "driving_mode_on"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    #getter for: Lcom/android/settings_ex/DrivingModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/DrivingModeEnabler;->access$000(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 185
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    :cond_0
    const-class v1, Lcom/android/settings_ex/DrivingModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0909a5

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    #getter for: Lcom/android/settings_ex/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings_ex/DrivingModeEnabler;->access$100(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    #getter for: Lcom/android/settings_ex/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings_ex/DrivingModeEnabler;->access$100(Lcom/android/settings_ex/DrivingModeEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/DrivingModeEnabler$2;->this$0:Lcom/android/settings_ex/DrivingModeEnabler;

    #getter for: Lcom/android/settings_ex/DrivingModeEnabler;->mPosition:I
    invoke-static {v2}, Lcom/android/settings_ex/DrivingModeEnabler;->access$200(Lcom/android/settings_ex/DrivingModeEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
