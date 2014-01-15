.class public Lcom/android/settings_ex/ConfirmLockPattern;
.super Landroid/preference/PreferenceActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ConfirmLockPattern$1;,
        Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings_ex/ConfirmLockPattern$Stage;
    }
.end annotation


# static fields
.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings_ex.ConfirmLockPattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings_ex.ConfirmLockPattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings_ex.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings_ex.ConfirmLockPattern.header_wrong"

.field public static final PACKAGE:Ljava/lang/String; = "com.android.settings_ex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f09062b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 72
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const v2, 0x10203e7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 74
    .local v1, view:Landroid/widget/LinearLayout;
    const v2, 0x7f020291

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    .end local v1           #view:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method
