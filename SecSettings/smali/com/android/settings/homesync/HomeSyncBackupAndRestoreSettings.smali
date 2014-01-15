.class public Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;
.super Landroid/app/Fragment;
.source "HomeSyncBackupAndRestoreSettings.java"


# static fields
.field public static final BACKUP_REQUEST:I = 0x1

.field private static final KEY_BACKUP:Ljava/lang/String; = "homesync_backup"

.field private static final KEY_RESTORE:Ljava/lang/String; = "homesync_restore"

.field public static final RESTORE_REQUEST:I = 0x2

.field private static final SPC_EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final TAG:Ljava/lang/String; = "HomeSyncBackupActivity"


# instance fields
.field private mBackupComment:Landroid/widget/TextView;

.field private mBackupPref:Landroid/preference/Preference;

.field private mBackupStartBtn:Landroid/widget/Button;

.field private mRestoreComment:Landroid/widget/TextView;

.field private mRestorePref:Landroid/preference/Preference;

.field private mRestoreStartBtn:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mStartButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$1;-><init>(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mStartButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRestoreStartBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mBackupStartBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method createAlertDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "resId"

    .prologue
    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0912be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0909ed

    new-instance v3, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings$2;-><init>(Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 110
    const-string v3, "account_name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "HomeSyncBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult accountName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-ne p1, v6, :cond_1

    .line 114
    new-instance v1, Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/homesync/BackupFragment;-><init>()V

    .line 115
    .local v1, newFragment:Landroid/app/Fragment;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 118
    .local v2, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v3

    const-string v4, "BackupFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 119
    invoke-virtual {v2, v7}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 121
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 135
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #newFragment:Landroid/app/Fragment;
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0       #accountName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 123
    new-instance v1, Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/homesync/RestoreFragment;-><init>()V

    .line 124
    .restart local v1       #newFragment:Landroid/app/Fragment;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 127
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v3

    const-string v4, "RestoreFragment"

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 128
    invoke-virtual {v2, v7}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 130
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 133
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #newFragment:Landroid/app/Fragment;
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0911aa

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v1, 0x7f040094

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRootView:Landroid/view/View;

    .line 71
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b018d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mBackupStartBtn:Landroid/widget/Button;

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mBackupStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mStartButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRestoreStartBtn:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mRestoreStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/HomeSyncBackupAndRestoreSettings;->mStartButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v0
.end method
