.class Lcom/android/settings_ex/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSyncSettings$1;->this$0:Lcom/android/settings_ex/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings_ex/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/AccountSyncSettings;->access$000(Lcom/android/settings_ex/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/accounts/AccountSyncSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/settings_ex/accounts/AccountSyncSettings$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 146
    return-void
.end method
