.class Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;
.super Landroid/app/ProgressDialog;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;->this$1:Lcom/android/settings_ex/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method
