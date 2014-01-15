.class Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$1;
.super Landroid/app/ProgressDialog;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/settings_ex/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings_ex/cloud/CloudSettingsMainFragment;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method
