.class Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;
.super Landroid/os/AsyncTask;
.source "BackupListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/homesync/BackupListActivity;
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
.field final synthetic this$0:Lcom/android/settings_ex/homesync/BackupListActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/homesync/BackupListActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/homesync/BackupListActivity;Lcom/android/settings_ex/homesync/BackupListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    const-wide/16 v3, 0x0

    #setter for: Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$102(Lcom/android/settings_ex/homesync/BackupListActivity;J)J

    .line 144
    new-instance v0, Lcom/android/settings_ex/homesync/StorageMeasurement;

    invoke-direct {v0}, Lcom/android/settings_ex/homesync/StorageMeasurement;-><init>()V

    .line 145
    .local v0, mMeasure:Lcom/android/settings_ex/homesync/StorageMeasurement;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

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

    #setter for: Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$102(Lcom/android/settings_ex/homesync/BackupListActivity;J)J

    .line 146
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

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

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$114(Lcom/android/settings_ex/homesync/BackupListActivity;J)J

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

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

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$114(Lcom/android/settings_ex/homesync/BackupListActivity;J)J

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

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

    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$114(Lcom/android/settings_ex/homesync/BackupListActivity;J)J

    .line 149
    const-string v2, "HomeSyncBackupListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSourceTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    #getter for: Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$100(Lcom/android/settings_ex/homesync/BackupListActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v1, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    #getter for: Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J
    invoke-static {v4}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$100(Lcom/android/settings_ex/homesync/BackupListActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settings_ex/homesync/StorageMeasurement;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v1, p:Lcom/android/settings_ex/homesync/BackupListActivity$ListItem;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    iget-object v2, v2, Lcom/android/settings_ex/homesync/BackupListActivity;->list_info:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    #getter for: Lcom/android/settings_ex/homesync/BackupListActivity;->mSourceTotalSize:J
    invoke-static {v2}, Lcom/android/settings_ex/homesync/BackupListActivity;->access$100(Lcom/android/settings_ex/homesync/BackupListActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 160
    new-instance v1, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    iget-object v3, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040015

    iget-object v5, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    iget-object v5, v5, Lcom/android/settings_ex/homesync/BackupListActivity;->list_info:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;-><init>(Lcom/android/settings_ex/homesync/BackupListActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 161
    .local v1, m_adapter:Lcom/android/settings_ex/homesync/BackupListActivity$ListItemAdapter;
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    invoke-virtual {v2, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->this$0:Lcom/android/settings_ex/homesync/BackupListActivity;

    invoke-virtual {v2}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 163
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 165
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 166
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/homesync/BackupListActivity$CalculateDirectorySizeTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
