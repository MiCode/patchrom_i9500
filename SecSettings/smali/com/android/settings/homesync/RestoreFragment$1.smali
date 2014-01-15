.class Lcom/android/settings_ex/homesync/RestoreFragment$1;
.super Ljava/lang/Object;
.source "RestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/RestoreFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$1;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 144
    new-instance v0, Lcom/android/settings_ex/homesync/FileOperationProgress;

    invoke-direct {v0}, Lcom/android/settings_ex/homesync/FileOperationProgress;-><init>()V

    .line 145
    .local v0, progressScreen:Lcom/android/settings_ex/homesync/FileOperationProgress;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$1;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 149
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$1;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getId()I

    move-result v2

    const-string v3, "FileOperationProgressFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 150
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 153
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$1;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/homesync/RestoreFragment;->startRestore(Lcom/android/settings_ex/homesync/FileOperationProgress;)V

    .line 155
    return-void
.end method
