.class Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;
.super Landroid/os/AsyncTask;
.source "BackupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalculateDirectorySizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/homesync/BackupFragment;Lcom/android/settings_ex/homesync/BackupFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$502(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 343
    new-instance v0, Lcom/android/settings_ex/homesync/StorageMeasurement;

    invoke-direct {v0}, Lcom/android/settings_ex/homesync/StorageMeasurement;-><init>()V

    .line 344
    .local v0, mMeasure:Lcom/android/settings_ex/homesync/StorageMeasurement;
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Music"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$502(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 345
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$514(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$514(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 347
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$514(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 348
    const-string v1, "BackupFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSourceTotalSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$500(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secdata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$900(Lcom/android/settings_ex/homesync/BackupFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$702(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 354
    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$500(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v3}, Lcom/android/settings_ex/homesync/BackupFragment;->access$700(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$302(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mCheckShared:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/homesync/BackupFragment;->access$400(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSharedDataSize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$500(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$314(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mCheckPrivate:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings_ex/homesync/BackupFragment;->access$600(Lcom/android/settings_ex/homesync/BackupFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mPrivateDataSize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$700(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/homesync/BackupFragment;->access$314(Lcom/android/settings_ex/homesync/BackupFragment;J)J

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/homesync/BackupFragment;->access$800()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupFragment;

    #getter for: Lcom/android/settings_ex/homesync/BackupFragment;->mSelectedDatasize:J
    invoke-static {v1}, Lcom/android/settings_ex/homesync/BackupFragment;->access$300(Lcom/android/settings_ex/homesync/BackupFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 336
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/BackupFragment$CalculateDirectorySizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
