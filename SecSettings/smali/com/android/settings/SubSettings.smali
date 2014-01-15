.class public Lcom/android/settings_ex/SubSettings;
.super Lcom/android/settings_ex/Settings;
.source "SubSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
