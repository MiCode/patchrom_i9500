.class public Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;
.super Landroid/app/DialogFragment;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmEnforceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1311
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 1313
    new-instance v0, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;-><init>()V

    .line 1314
    .local v0, dialog:Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1315
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_enforce"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1316
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1320
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1322
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1323
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09074b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1324
    const v2, 0x7f09074c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1326
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment$1;-><init>(Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1333
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment$2;-><init>(Lcom/android/settings_ex/DevelopmentSettings$ConfirmEnforceFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
