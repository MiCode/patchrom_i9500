.class Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;
.super Landroid/os/AsyncTask;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/RestoreFragment;
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
.field final synthetic this$0:Lcom/android/settings_ex/homesync/RestoreFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/homesync/RestoreFragment;Lcom/android/settings_ex/homesync/RestoreFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 309
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$302(Lcom/android/settings_ex/homesync/RestoreFragment;J)J

    .line 311
    new-instance v0, Lcom/android/settings_ex/homesync/StorageMeasurement;

    invoke-direct {v0}, Lcom/android/settings_ex/homesync/StorageMeasurement;-><init>()V

    .line 312
    .local v0, mMeasure:Lcom/android/settings_ex/homesync/StorageMeasurement;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Music"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    #setter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$302(Lcom/android/settings_ex/homesync/RestoreFragment;J)J

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$314(Lcom/android/settings_ex/homesync/RestoreFragment;J)J

    .line 314
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$314(Lcom/android/settings_ex/homesync/RestoreFragment;J)J

    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/homesync/StorageMeasurement;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$314(Lcom/android/settings_ex/homesync/RestoreFragment;J)J

    .line 316
    const-string v2, "RestoreFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSourceTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$300(Lcom/android/settings_ex/homesync/RestoreFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Lcom/android/settings_ex/homesync/RestoreFragment$ListItem;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$300(Lcom/android/settings_ex/homesync/RestoreFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment$ListItem;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v1, p:Lcom/android/settings_ex/homesync/RestoreFragment$ListItem;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$400(Lcom/android/settings_ex/homesync/RestoreFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->mSourceTotalSize:J
    invoke-static {v2}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$300(Lcom/android/settings_ex/homesync/RestoreFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 327
    new-instance v0, Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040112

    iget-object v4, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->list_info:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$400(Lcom/android/settings_ex/homesync/RestoreFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;-><init>(Lcom/android/settings_ex/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 328
    .local v0, m_adapter:Lcom/android/settings_ex/homesync/RestoreFragment$ListItemAdapter;
    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$500(Lcom/android/settings_ex/homesync/RestoreFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/RestoreFragment;

    #getter for: Lcom/android/settings_ex/homesync/RestoreFragment;->backupList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings_ex/homesync/RestoreFragment;->access$500(Lcom/android/settings_ex/homesync/RestoreFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/RestoreFragment$CalculateDirectorySizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
