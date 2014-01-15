.class Lcom/android/settings_ex/homesync/BackupFragment$2;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$302(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/homesync/BackupFragment;->access$400(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$500(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$314(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/homesync/BackupFragment;->access$600(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$700(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$314(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/homesync/BackupFragment;->access$800()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$2;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$300(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method
