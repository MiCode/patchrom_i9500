.class public Lcom/android/settings_ex/HomeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "HomeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public RESULT_NEXT:I

.field private mButton_next:Landroid/view/View;

.field private mFragment:Lcom/android/settings_ex/HomeSettings;

.field private mNextButton:Landroid/widget/TextView;

.field private mPrevButton:Landroid/widget/Button;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->RESULT_NEXT:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/HomeSettings;->getCurrentHome()I

    move-result v1

    .line 77
    .local v1, mode:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 78
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v3, smart_scroll_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, smart_pause_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    .end local v2           #smart_pause_changed:Landroid/content/Intent;
    .end local v3           #smart_scroll_changed:Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->RESULT_NEXT:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f040091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mResolver:Landroid/content/ContentResolver;

    .line 42
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mButton_next:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mButton_next:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090652

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, original_str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0b017f

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/HomeSettings;

    iput-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings_ex/HomeSettings;

    .line 69
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mFragment:Lcom/android/settings_ex/HomeSettings;

    iget-object v2, p0, Lcom/android/settings_ex/HomeSettingsSetupWizard;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/HomeSettings;->setButton(Landroid/widget/TextView;)V

    .line 70
    return-void
.end method
