.class Lcom/android/settings_ex/dmr/DMRSettings$6;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dmr/DMRSettings;

.field final synthetic val$clickedList:Ljava/util/List;

.field final synthetic val$device_permission_type:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dmr/DMRSettings;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iput-object p2, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->val$clickedList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->val$device_permission_type:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DeleteList()V
    .locals 7

    .prologue
    .line 1709
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->val$clickedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/dmrservice/Device;

    .line 1710
    .local v0, device:Lcom/sec/android/allshare/dmrservice/Device;
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iget-object v4, v4, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v4, :cond_1

    .line 1713
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->val$device_permission_type:Z

    if-ne v4, v5, :cond_0

    .line 1714
    const-string v3, "permit"

    .line 1718
    .local v3, permission:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/dmr/DMRSettings$6;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    iget-object v4, v4, Lcom/android/settings_ex/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    iget-object v5, v0, Lcom/sec/android/allshare/dmrservice/Device;->deviceID:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->removeDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1720
    .end local v3           #permission:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1721
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException while deleting the item form the list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1716
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    const-string v3, "deny"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #permission:Ljava/lang/String;
    goto :goto_1

    .line 1723
    .end local v3           #permission:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1724
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while deleting the item form the list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1728
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v4, "Settings"

    const-string v5, "mService is null while deleting the item form the list"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1732
    .end local v0           #device:Lcom/sec/android/allshare/dmrservice/Device;
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1701
    const-string v0, "Settings"

    const-string v1, "Delete Clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-direct {p0}, Lcom/android/settings_ex/dmr/DMRSettings$6;->DeleteList()V

    .line 1704
    return-void
.end method
