.class public Lcom/android/settings_ex/SettingsReceiverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final PREFS:Ljava/lang/String; = "NoUSBPreference"

.field public static final PREF_DONT_ASK_AGAIN:Ljava/lang/String; = "pref_dont_ask_again"

.field private static final TAG:Ljava/lang/String; = "SettingsReceiverActivity"


# instance fields
.field private mAlwaysCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 87
    packed-switch p2, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const-string v2, "SettingsReceiverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mAlwaysCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mAlwaysCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    const-string v2, "NoUSBPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_dont_ask_again"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsReceiverActivity;->finish()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v5, "NoUSBPreference"

    invoke-virtual {p0, v5, v8}, Lcom/android/settings_ex/SettingsReceiverActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 54
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v5, "SettingsReceiverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PREF_DONT_ASK_AGAIN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pref_dont_ask_again"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v5, "pref_dont_ask_again"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsReceiverActivity;->finish()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 60
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsReceiverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 62
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsReceiverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iget-object v5, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0400e3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 66
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x7f0b010a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/SettingsReceiverActivity;->mAlwaysCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 67
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x7f0b02b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, mNoUSB:Landroid/widget/TextView;
    const-string v5, "dev.kiessupport"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, kies:Ljava/lang/String;
    const-string v5, "SettingsReceiverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dev.kiessupport is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v5, "TRUE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const v5, 0x7f09100e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :goto_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v4, out:Landroid/util/TypedValue;
    iget-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010355

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 79
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    iput v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 80
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsReceiverActivity;->setupAlert()V

    .line 83
    return-void

    .line 75
    .end local v4           #out:Landroid/util/TypedValue;
    :cond_1
    const v5, 0x7f09100f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
